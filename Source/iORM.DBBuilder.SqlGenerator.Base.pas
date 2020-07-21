unit iORM.DBBuilder.SqlGenerator.Base;

interface

uses
  System.Classes, iORM.DBBuilder.Interfaces, iORM.DB.Interfaces, iORM.Attributes;

const
  SCRIPT_SEPARATOR_LENGTH = 40;
  SCRIPT_INDENTATION_WIDTH = 2;
  MSG_METHOD_NOT_IMPLEMENTED = 'Method not implemented by this class.';

type

  TioDBBuilderSqlGenBase = class(TInterfacedObject)
  private
    FFSchema: IioDBBuilderSchema;
    FIndentationLevel: Byte;
  protected
    function FSchema: IioDBBuilderSchema;

    function NewQuery: IioQuery;
    function OpenQuery(const ASQL: String): IioQuery;
    procedure ExecuteQuery(const ASQL: String);

    procedure DecIndentationLevel;
    procedure IncIndentationLevel;
    function GetIndentation: String;

    procedure ScriptAdd(const AText: String); virtual;
    procedure ScriptAddComment(const AText: String); virtual;
    procedure ScriptAddEmpty; virtual;
    procedure ScriptAddSeparator; virtual;
    procedure ScriptAddTitle(const AText: String); virtual;
    procedure ScriptAddWarning(const AText: String); virtual;

    procedure AddWarning(const AText: String); virtual;

    procedure InitializeScript(const AInitialization: TStrings); virtual;
    procedure FinalizeScript(const AFinalization: TStrings); virtual;

    procedure WarningTypeAffinity(const AOldFieldType, ANewFieldType, AFieldName, ATableName, AInvalidTypeConversions: string); virtual;
    procedure WarningNullBecomesNotNull(const AOldFieldNotNull: Boolean; const AField: IioDBBuilderSchemaField;
      const ATable: IioDBBuilderSchemaTable); virtual;
    procedure WarningNewValueLessThanTheOldOne(const AValueName: String; const AOldValue, ANewValue: Integer;
      const AFieldName, ATableName: String); virtual;
    procedure WarningValueChanged(const AValueName, AOldValue, ANewValue, AFieldName, ATableName: String); virtual;

    function BuildIndexName(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex): String; virtual;
    function BuildIndexUnique(const AIndex: ioIndex): String; virtual;
    function BuildIndexOrientation(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex; const AIndexName: String)
      : String; virtual;
    function BuildIndexFieldList(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex; const AIndexName: String)
      : String; virtual;
  public
    constructor Create(const ASchema: IioDBBuilderSchema);

    procedure DoInitializeScript; virtual;
    procedure DoFinalizeScript; virtual;

  end;

implementation

uses
  iORM.DB.Factory, iORM.DB.ConnectionContainer, System.SysUtils, System.StrUtils, iORM.CommonTypes, iORM.SqlTranslator, iORM.Exceptions;

{ TioDBBuilderSqlGenBase }

procedure TioDBBuilderSqlGenBase.ScriptAddComment(const AText: String);
begin
  FSchema.SqlScript.Add('-- ' + AText);
end;

procedure TioDBBuilderSqlGenBase.ScriptAddEmpty;
begin
  FSchema.SqlScript.Add('');
end;

procedure TioDBBuilderSqlGenBase.ScriptAddSeparator;
begin
  FSchema.SqlScript.Add(StringOfChar('-', SCRIPT_SEPARATOR_LENGTH));
end;

procedure TioDBBuilderSqlGenBase.ScriptAddTitle(const AText: String);
begin
  ScriptAddEmpty;
  ScriptAddSeparator;
  FSchema.SqlScript.Add(AText);
  ScriptAddSeparator;
end;

procedure TioDBBuilderSqlGenBase.ScriptAddWarning(const AText: String);
begin
  FSchema.SqlScript.Add('-- WARNING:  ' + AText);
end;

procedure TioDBBuilderSqlGenBase.AddWarning(const AText: String);
begin
  FSchema.Warnings.Add(GetIndentation + AText);
end;

function TioDBBuilderSqlGenBase.BuildIndexFieldList(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex;
  const AIndexName: String): String;
var
  LFieldList: TStrings;
  LField: String;
  LComma: String;
  LIndexOrientation: String;
begin
  LIndexOrientation := BuildIndexOrientation(ATable, AIndex, AIndexName);
  LFieldList := TStringList.Create;
  try
    LComma := '';
    LFieldList.Delimiter := ',';
    LFieldList.DelimitedText := AIndex.CommaSepFieldList;
    for LField in LFieldList do
    begin
      Result := Format('%s%s %s %s', [Result, LComma, LField, LIndexOrientation]);
      LComma := ', ';
    end;
  finally
    LFieldList.Free;
  end;
end;

function TioDBBuilderSqlGenBase.BuildIndexName(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex): String;
var
  LFieldList: TStrings;
  LField: String;
begin
  // If the index name is already specified then use it and exit
  if not AIndex.IndexName.IsEmpty then
    Exit(TioSqlTranslator.Translate(AIndex.IndexName, ATable.GetContextTable.GetClassName, False));
  // Build the indexname
  Result := 'IDX_' + ATable.TableName;
  // Field list
  LFieldList := TStringList.Create;
  try
    LFieldList.Delimiter := ',';
    LFieldList.DelimitedText := AIndex.CommaSepFieldList;
    for LField in LFieldList do
      Result := Result + '_' + LField;
  finally
    LFieldList.Free;
  end;
  // Index orientation
  case AIndex.IndexOrientation of
    ioAscending:
      Result := Result + '_A';
    ioDescending:
      Result := Result + '_D';
  end;
  // Unique
  if AIndex.Unique then
    Result := Result + '_U';
  // Translate
  Result := TioSqlTranslator.Translate(Result, ATable.GetContextTable.GetClassName, False);
end;

function TioDBBuilderSqlGenBase.BuildIndexOrientation(const ATable: IioDBBuilderSchemaTable; const AIndex: ioIndex;
  const AIndexName: String): String;
begin
  case AIndex.IndexOrientation of
    ioAscending:
      Exit('ASC');
    ioDescending:
      Exit('DESC');
  else
    raise EioException.Create(ClassName, 'BuildIndexOrientation', Format('Invalid index orientation (index ''%s'', table ''%s'')',
      [AIndexName, ATable.TableName]));
  end;
end;

function TioDBBuilderSqlGenBase.BuildIndexUnique(const AIndex: ioIndex): String;
begin
  if AIndex.Unique then
    Exit('UNIQUE')
  else
    Exit('');
end;

procedure TioDBBuilderSqlGenBase.WarningNewValueLessThanTheOldOne(const AValueName: String; const AOldValue, ANewValue: Integer;
  const AFieldName, ATableName: String);
begin
  if ANewValue < AOldValue then
    AddWarning(Format('Table ''%s'' field ''%s'' --> The new %s cannot be less than the old one (old = $d, new = %d)',
      [ATableName, AFieldName, AValueName, AOldValue, ANewValue]));
end;

procedure TioDBBuilderSqlGenBase.WarningNullBecomesNotNull(const AOldFieldNotNull: Boolean; const AField: IioDBBuilderSchemaField;
  const ATable: IioDBBuilderSchemaTable);
begin
  if AField.NotNull and not AOldFieldNotNull then
    AddWarning
      (Format('Table ''%s'' field ''%s'' --> The "NotNull" flag changes from false to true and a default value has not been specified',
      [ATable.TableName, AField.FieldName]));
end;

procedure TioDBBuilderSqlGenBase.WarningTypeAffinity(const AOldFieldType, ANewFieldType, AFieldName, ATableName,
  AInvalidTypeConversions: string);
var
  LRequiredConversion: String;
begin
  LRequiredConversion := Format('[%s->%s]', [AOldFieldType, ANewFieldType]);
  if ContainsText(AInvalidTypeConversions, LRequiredConversion) then
    AddWarning(Format('Table ''%s'' field ''%s'' --> Invalid conversion from ''%s'' to ''%s''', [ATableName, AFieldName, AOldFieldType,
      ANewFieldType]));
end;

procedure TioDBBuilderSqlGenBase.WarningValueChanged(const AValueName, AOldValue, ANewValue, AFieldName, ATableName: String);
begin
  if ANewValue <> AOldValue then
    AddWarning(Format('Table ''%s'' field ''%s'' --> Changing the %s is not allowed (old = ''$s'', new = ''%s'')',
      [ATableName, AFieldName, AValueName, AOldValue, ANewValue]));
end;

constructor TioDBBuilderSqlGenBase.Create(const ASchema: IioDBBuilderSchema);
begin
  FFSchema := ASchema;
  FIndentationLevel := 0;
end;

function TioDBBuilderSqlGenBase.NewQuery: IioQuery;
begin
  Result := TioDbFactory.Query(FSchema.ConnectionDefName);
end;

function TioDBBuilderSqlGenBase.OpenQuery(const ASQL: String): IioQuery;
begin
  Result := NewQuery;
  Result.SQL.Text := ASQL;
  Result.Open;
end;

procedure TioDBBuilderSqlGenBase.ScriptAdd(const AText: String);
begin
  FSchema.SqlScript.Add(GetIndentation + AText);
end;

procedure TioDBBuilderSqlGenBase.DecIndentationLevel;
begin
  Dec(FIndentationLevel, SCRIPT_INDENTATION_WIDTH);
end;

procedure TioDBBuilderSqlGenBase.DoFinalizeScript;
var
  LFinalization: TStrings;
begin
  LFinalization := TStringList.Create;
  try
    FinalizeScript(LFinalization);
    FSchema.SqlScript.AddStrings(LFinalization);
  finally
    LFinalization.Free;
  end;
end;

procedure TioDBBuilderSqlGenBase.DoInitializeScript;
var
  LInitialization: TStrings;
  I: Integer;
begin
  LInitialization := TStringList.Create;
  try
    InitializeScript(LInitialization);
    for I := LInitialization.Count - 1 downto 0 do
      FSchema.SqlScript.Insert(0, LInitialization[I]);
  finally
    LInitialization.Free;
  end;
end;

procedure TioDBBuilderSqlGenBase.ExecuteQuery(const ASQL: String);
var
  LQuery: IioQuery;
begin
  LQuery := NewQuery;
  LQuery.SQL.Text := ASQL;
  LQuery.ExecSQL;
end;

procedure TioDBBuilderSqlGenBase.FinalizeScript(const AFinalization: TStrings);
begin
  ScriptAddEmpty;
  ScriptAddSeparator;
  ScriptAddComment('End of the script generated by iORM');
  ScriptAddSeparator;
end;

function TioDBBuilderSqlGenBase.FSchema: IioDBBuilderSchema;
begin
  Result := FSchema;
end;

function TioDBBuilderSqlGenBase.GetIndentation: String;
begin
  Result := StringOfChar(' ', FIndentationLevel * SCRIPT_INDENTATION_WIDTH);
end;

procedure TioDBBuilderSqlGenBase.IncIndentationLevel;
begin
  Inc(FIndentationLevel, SCRIPT_INDENTATION_WIDTH);
end;

procedure TioDBBuilderSqlGenBase.InitializeScript(const AInitialization: TStrings);
begin
  ScriptAddSeparator;
  ScriptAddComment('Start of the script generated by iORM');
  ScriptAddSeparator;
  ScriptAddComment('Date - time....: ' + FormatDateTime('d mmm yyyy - hh:nn:ss', Now));
  ScriptAddComment('Connection name: ' + FSchema.ConnectionDefName);
  ScriptAddComment('Database file..: ' + FSchema.DatabaseFileName);
  ScriptAddComment('DBMS...........: ' + TioConnectionManager.GetConnectionDefByName(FSchema.ConnectionDefName).Params.DriverID);
  ScriptAddSeparator;
end;

end.
