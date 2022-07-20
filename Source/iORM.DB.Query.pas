{ *************************************************************************** }
{ }
{ iORM - (interfaced ORM) }
{ }
{ Copyright (C) 2015-2016 Maurizio Del Magno }
{ }
{ mauriziodm@levantesw.it }
{ mauriziodelmagno@gmail.com }
{ https://github.com/mauriziodm/iORM.git }
{ }
{ }
{ *************************************************************************** }
{ }
{ This file is part of iORM (Interfaced Object Relational Mapper). }
{ }
{ Licensed under the GNU Lesser General Public License, Version 3; }
{ you may not use this file except in compliance with the License. }
{ }
{ iORM is free software: you can redistribute it and/or modify }
{ it under the terms of the GNU Lesser General Public License as published }
{ by the Free Software Foundation, either version 3 of the License, or }
{ (at your option) any later version. }
{ }
{ iORM is distributed in the hope that it will be useful, }
{ but WITHOUT ANY WARRANTY; without even the implied warranty of }
{ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the }
{ GNU Lesser General Public License for more details. }
{ }
{ You should have received a copy of the GNU Lesser General Public License }
{ along with iORM.  If not, see <http://www.gnu.org/licenses/>. }
{ }
{ *************************************************************************** }

unit iORM.DB.Query;

interface

uses
  iORM.Context.Properties.Interfaces,
  System.Classes,
  System.Rtti,
  FireDAC.Comp.Client,
  Data.DB, iORM.Context.Interfaces, iORM.DB.Interfaces;

type

  // Classe che incapsula una query
  TioQuery = class(TInterfacedObject, IioQuery)
  strict private
    FSqlConnection: IioConnection;
    FSqlQuery: TioInternalSqlQuery;
    function ParamByName(const AParamName: String): TioParam;
    function ParamByProp(const AProp: IioProperty): TioParam;
    function WhereParamByProp(const AProp: IioProperty): TioParam;
    function GetValueByFieldIndexAsVariant(Idx: Integer): Variant;
  strict protected
  public
    constructor Create(const AConnection: IioConnection; const ASQLQuery: TioInternalSqlQuery);
    destructor Destroy; override;
    function GetQuery: TioInternalSqlQuery;
    procedure First;
    procedure Last;
    procedure Next;
    procedure Prior;
    function Eof: Boolean;
    function GetValue(const AProperty: IioProperty; const AContext: IioContext): TValue;
    function GetValueByFieldNameAsVariant(const AFieldName: String): Variant;
    procedure Open;
    procedure Close;
    function IsEmpty: Boolean;
    function IsSqlEmpty: Boolean;
    function IsActive: Boolean;
    function ExecSQL: integer;
    function GetSQL: TStrings;
    function Fields: TioFields;
    procedure SetParamValueToNull(const AProp: IioProperty; const AForceDataType: TFieldType = ftUnknown);
    procedure FillQueryWhereParams(const AContext: IioContext);
    procedure CleanConnectionRef;
    function CreateBlobStream(const AProperty: IioProperty; const Mode: TBlobStreamMode): TStream;

    procedure ParamByName_SetValue(const AParamName: String; const AValue: Variant);
    procedure ParamByProp_Clear(const AProp: IioProperty; const ADataType: TFieldType);
    procedure ParamByProp_SetValue(const AProp: IioProperty; const AValue: Variant);
    procedure ParamByProp_SetValueAsString(const AProp: IioProperty; const AValue: String);
    procedure ParamByProp_SetValueAsDateTime(const AProp: IioProperty; const AValue: TDateTime);
    procedure ParamByProp_SetValueAsDate(const AProp: IioProperty; const AValue: TDate);
    procedure ParamByProp_SetValueAsTime(const AProp: IioProperty; const AValue: TTime);
    procedure ParamByProp_SetValueAsFloat(const AProp: IioProperty; const AValue: Double);
    procedure ParamByProp_SetValueByContext(const AProp: IioProperty; const AContext: IioContext);
    procedure ParamByProp_SetValueAsIntegerNullIfZero(const AProp: IioProperty; const AValue: Integer);
    procedure ParamByProp_LoadAsStreamObj(const AObj: TObject; const AProperty: IioProperty);
    procedure ParamObjVer_SetValue(const AContext: IioContext);
    procedure WhereParamByProp_SetValue(const AProp: IioProperty; const AValue: Variant);
    procedure WhereParamByProp_SetValueAsDateTime(const AProp: IioProperty; const AValue: TDateTime);
    procedure WhereParamByProp_SetValueAsFloat(const AProp: IioProperty; const AValue: Double);
    procedure WhereParamObjID_SetValue(const AContext: IioContext);
    procedure WhereParamObjVer_SetValue(const AContext: IioContext);

    property SQL: TStrings read GetSQL;
  end;

implementation

uses
  System.TypInfo, iORM.Exceptions, iORM.Attributes, FireDAC.Stan.Param,
  iORM.ObjectsForge.Factory, iORM.DuckTyped.Interfaces,
  iORM.DuckTyped.Factory, iORM.DB.Factory, System.JSON,
  iORM.Utilities, iORM.Interfaces, iORM.Where.SqlItems.Interfaces,
  System.SysUtils;

{ TioQuerySqLite }

procedure TioQuery.CleanConnectionRef;
begin
  // Remove the reference to the connection
  // NB: Viene richiamato alla distruzione di una connessione perch� altrimenti avrei un riferimento incrociato
  // tra la connessione che, attraverso il proprio QueryContainer, manteine un riferimento a tutte le query
  // che sono state preparate ela query che mantiene un riferimento alla connessione al suo interno; in pratica
  // questo causava molti memory leaks perch� questi oggetti rimanevano in vita perenne in quanto si sostenevano
  // a vicenda e rendevano inefficace il Reference Count
  FSqlConnection := nil;
end;

procedure TioQuery.Close;
begin
  FSqlQuery.Close;
end;

constructor TioQuery.Create(const AConnection: IioConnection; const ASQLQuery: TioInternalSqlQuery);
begin
  inherited Create;
  FSqlQuery := ASQLQuery;
  FSqlConnection := AConnection; // Per utilizzare il reference counting
  if Assigned(AConnection) and AConnection.IsDBConnection then
    FSqlQuery.Connection := AConnection.AsDBConnection.GetConnection;
end;

function TioQuery.CreateBlobStream(const AProperty: IioProperty; const Mode: TBlobStreamMode): TStream;
begin
  Result := FSqlQuery.CreateBlobStream(Fields.FieldByName(AProperty.GetSqlFieldAlias), Mode);
end;

destructor TioQuery.Destroy;
begin
  if FSqlQuery.Active then
    FSqlQuery.Close;
  FSqlQuery.Free;
  inherited;
end;

function TioQuery.Eof: Boolean;
begin
  Result := FSqlQuery.Eof;
end;

function TioQuery.ExecSQL: integer;
begin
  FSqlQuery.ExecSQL;
  Result := FSqlQuery.RowsAffected;
end;

function TioQuery.Fields: TioFields;
begin
  Result := FSqlQuery.Fields;
end;

procedure TioQuery.FillQueryWhereParams(const AContext: IioContext);
var
  ASqlItem: IioSqlItem;
  ASqlItemWhere: IioSqlItemWhere;
begin
  for ASqlItem in AContext.Where.GetWhereItems do
  begin
    if Supports(ASqlItem, IioSqlItemWhere, ASqlItemWhere) and ASqlItemWhere.HasParameter then
      ParamByName(ASqlItemWhere.GetSqlParamName(AContext.Map)).Value := ASqlItemWhere.GetValue(AContext.Map).AsVariant;
  end;
  if AContext.IsTrueClass then
    ParamByName(AContext.TrueClass.GetSqlParamName).Value := '%' + AContext.TrueClass.GetClassName + '%';
end;

procedure TioQuery.First;
begin
  FSqlQuery.First;
end;

function TioQuery.GetQuery: TioInternalSqlQuery;
begin
  Result := FSqlQuery;
end;

function TioQuery.GetSQL: TStrings;
begin
  Result := FSqlQuery.SQL;
end;

function TioQuery.GetValue(const AProperty: IioProperty; const AContext: IioContext): TValue;
begin
  // If the property is a BelongsTo relation then return data as Integer
  // (the type for ID)
  if AProperty.GetRelationType = rtBelongsTo then
    Exit(FSqlQuery.FieldByName(AProperty.GetSqlFieldAlias).AsInteger);

  // Else return the value for the field related to the AProperty as TValue
  Result := TioDBFactory.SqlDataConverter(AContext.GetTable.GetConnectionDefName).QueryToTValue(Self, AProperty);
end;

function TioQuery.GetValueByFieldIndexAsVariant(Idx: Integer): Variant;
begin
  Result := FSqlQuery.Fields[Idx].Value;
end;

function TioQuery.GetValueByFieldNameAsVariant(const AFieldName: String): Variant;
begin
  Result := FSqlQuery.FieldByName(AFieldName).Value;
end;

function TioQuery.IsSqlEmpty: Boolean;
begin
  Result := (FSqlQuery.SQL.Count = 0);
end;

function TioQuery.IsActive: Boolean;
begin
  Result := FSqlQuery.Active;
end;

function TioQuery.IsEmpty: Boolean;
begin
  Result := FSqlQuery.IsEmpty;
end;

procedure TioQuery.Last;
begin
  FSqlQuery.Last;
end;

procedure TioQuery.Next;
begin
  FSqlQuery.Next;
end;

procedure TioQuery.Open;
begin
  FSqlQuery.Open;
end;

function TioQuery.ParamByName(const AParamName: String): TioParam;
begin
  Result := Self.FSqlQuery.ParamByName(AParamName);
//  Result := (FSqlQuery as IProviderSupportNG).PSGetParams.ParamByName(AParamName);
end;

procedure TioQuery.ParamByName_SetValue(const AParamName: String; const AValue: Variant);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_Clear(const AProp: IioProperty; const ADataType: TFieldType);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValue(const AProp: IioProperty; const AValue: Variant);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValueAsDate(const AProp: IioProperty; const AValue: TDate);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValueAsDateTime(const AProp: IioProperty; const AValue: TDateTime);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValueAsFloat(const AProp: IioProperty; const AValue: Double);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValueAsString(const AProp: IioProperty; const AValue: String);
begin
  // To be implemented
end;

procedure TioQuery.ParamByProp_SetValueAsTime(const AProp: IioProperty; const AValue: TTime);
begin
  // To be implemented
end;

procedure TioQuery.WhereParamByProp_SetValue(const AProp: IioProperty; const AValue: Variant);
begin
  // To be implemented
end;

procedure TioQuery.WhereParamByProp_SetValueAsDateTime(const AProp: IioProperty; const AValue: TDateTime);
begin
  // To be implemented
end;

procedure TioQuery.WhereParamByProp_SetValueAsFloat(const AProp: IioProperty; const AValue: Double);
begin
  // To be implemented
end;

function TioQuery.ParamByProp(const AProp: IioProperty): TioParam;
begin
  Result := ParamByName(AProp.GetSqlParamName);
end;

procedure TioQuery.Prior;
begin
  FSqlQuery.Prior;
end;

procedure TioQuery.ParamByProp_LoadAsStreamObj(const AObj: TObject; const AProperty: IioProperty);
var
  LParam: TioParam;
  LDuckTypedStreamObject: IioDuckTypedStreamObject;
  LStream: TStream;
begin
  // First prepare the query in it is not
  // Self.FSqlQuery.Prepare;
  // Get the param
  LParam := FSqlQuery.ParamByName(AProperty.GetSqlParamName);
//  AParam := (FSqlQuery as IProviderSupportNG).PSGetParams.ParamByName(AProperty.GetSqlParamName);
  if not Assigned(LParam) then
    raise EioException.Create(Self.ClassName + ': ' + AProperty.GetSqlParamName + ' Sql parameter not found');

  // If AObj is a TStream then use it directly else wrap it with a
  // DuckTypedSTreamObject wrapper, extract the stream and then use it.
  // -------------------------------------------------------------------------------------------------------------------------------
  // TStream or descendant
  // -------------------------------------------------------------------------------------------------------------------------------
  if AObj is TStream then
  begin
    LStream := TStream(AObj);
    // If the Stream is empty or nil then set the Param value to NULL and exit
    if (not Assigned(LStream)) or (LStream.Size = 0) then
    begin
      LParam.DataType := ftBlob;
      LParam.Clear;
      Exit;
    end;
    // Load the stream content into the Param
    LParam.LoadFromStream(LStream, ftBlob);
  end
  // -------------------------------------------------------------------------------------------------------------------------------
  // NOT TStream or descendant, wrap into a DuckTypedStreamObject
  // -------------------------------------------------------------------------------------------------------------------------------
  else
  begin
    // Wrap the object into a DuckTypedStreamObject
    LDuckTypedStreamObject := TioDuckTypedFactory.DuckTypedStreamObject(AObj);
    // If the wrapped object IsEmpty set the Param value to NULL then exit
    if LDuckTypedStreamObject.IsEmpty then
    begin
      LParam.DataType := ftBlob;
      LParam.Clear;
      Exit;
    end;
    // Create the MemoryStream
    LStream := TMemoryStream.Create;
    try
      // Save the object content into the stream
      LDuckTypedStreamObject.SaveToStream(LStream);
      // Load the stream content into the Param
      LParam.LoadFromStream(LStream, ftBlob);
    finally
      // CleanUp
      LStream.Free;
    end;
  end;
  // -------------------------------------------------------------------------------------------------------------------------------
end;

procedure TioQuery.ParamByProp_SetValueAsIntegerNullIfZero(const AProp: IioProperty; const AValue: Integer);
begin
  if AValue <> 0 then
    ParamByProp(AProp).Value := AValue
  else
  begin
    ParamByProp(AProp).Clear;
    ParamByProp(AProp).DataType := ftInteger; // Thanks to Marco Mottadelli
  end;
end;

procedure TioQuery.WhereParamObjID_SetValue(const AContext: IioContext);
begin
  WhereParamByProp(AContext.GetProperties.GetIdProperty).Value := AContext.GetProperties.GetIdProperty.GetValue(AContext.DataObject).AsVariant;
end;

procedure TioQuery.ParamObjVer_SetValue(const AContext: IioContext);
var
  LProp: IioProperty;
begin
  LProp := AContext.GetProperties.ObjVersionProperty;
  // NB: SQLite NON supporta nativamente i TDateTime quindi li salvo come numeri reali
  if FSqlConnection.GetConnectionInfo.ConnectionType = TioConnectionType.cdtSQLite then
    ParamByProp(LProp).AsFloat := AContext.TransactionTimestamp
  else
    ParamByProp(LProp).AsDateTime := AContext.TransactionTimestamp;
end;

procedure TioQuery.WhereParamObjVer_SetValue(const AContext: IioContext);
var
  LProp: IioProperty;
begin
  LProp := AContext.GetProperties.ObjVersionProperty;
  // NB: SQLite NON supporta nativamente i TDateTime quindi li salvo come numeri reali
  if FSqlConnection.GetConnectionInfo.ConnectionType = TioConnectionType.cdtSQLite then
    WhereParamByProp(LProp).AsFloat := LProp.GetValue(AContext.DataObject).AsVariant
  else
    WhereParamByProp(LProp).AsDateTime := LProp.GetValue(AContext.DataObject).AsVariant;
end;

procedure TioQuery.ParamByProp_SetValueByContext(const AProp: IioProperty; const AContext: IioContext);
var
  LObj: TObject;
  LDuckTypedStreamObject: IioDuckTypedStreamObject;
  LStream: TStream;
  LParam: TioParam;
  LJSONValue: TJSONValue;
begin
  // AObj := nil;
  // -------------------------------------------------------------------------------------------------------------------------------
  // Normal property type (NO BLOB)
  // -------------------------------------------------------------------------------------------------------------------------------
  if not AProp.IsBlob then
  begin
    TioDBFactory.SqlDataConverter(AContext.GetTable.GetConnectionDefName).SetQueryParamByContext(Self, AProp, AContext);
    Exit;
  end;
  // At this point the property refer to a blob field (and to an Object) type then
  // check if the Object is assigned and if it isn't clear
  // the parameter
  // If a RelationChildPropertyPath is assigned then resolve it
  LObj := AProp.GetValueAsObject(AContext.DataObject);
  if AProp.RelationChildPropertyPathAssigned then
    LObj := TioUtilities.ResolveChildPropertyPath(LObj, AProp.GetRelationChildPropertyPath);
  if not Assigned(LObj) then
  begin
    SetParamValueToNull(AProp, ftBlob);
    Exit;
  end;
  // Get a Param reference
  LParam := Self.ParamByProp(AProp);
  // -------------------------------------------------------------------------------------------------------------------------------
  // Embedded property (ioRTEmbeddedHasMany & ioRTEmbeddedHasOne relation type)
  // -------------------------------------------------------------------------------------------------------------------------------
  if AProp.GetRelationType in [rtEmbeddedHasMany, rtEmbeddedHasOne] then
  begin
    case AProp.GetRelationType of
      rtEmbeddedHasMany:
        LJSONValue := TioObjectMakerFactory.GetObjectMapper.SerializeEmbeddedList(LObj);
      rtEmbeddedHasOne:
        LJSONValue := TioObjectMakerFactory.GetObjectMapper.SerializeEmbeddedObject(LObj);
    else
      LJSONValue := nil;
    end;
    try
      LParam.AsString := LJSONValue.ToString;
      Exit;
    finally
      LJSONValue.Free;
    end;
  end;
  // -------------------------------------------------------------------------------------------------------------------------------
  // TStream or descendant (BLOB)
  // -------------------------------------------------------------------------------------------------------------------------------
  if AProp.IsStream then
  begin
    LStream := TStream(LObj);
    // If the Stream is empty or nil then set the Param value to NULL and exit
    if (not Assigned(LStream)) or (LStream.Size = 0) then
    begin
      LParam.DataType := ftBlob;
      LParam.Clear;
      Exit;
    end;
    // Load the stream content into the Param
    LParam.LoadFromStream(LStream, ftBlob);
    Exit;
  end;
  // -------------------------------------------------------------------------------------------------------------------------------
  // NOT TStream or descendant, wrap into a DuckTypedStreamObject  (BLOB)
  // -------------------------------------------------------------------------------------------------------------------------------
  // Wrap the object into a DuckTypedStreamObject
  LDuckTypedStreamObject := TioDuckTypedFactory.DuckTypedStreamObject(LObj);
  // If the wrapped object IsEmpty set the Param value to NULL then exit
  if LDuckTypedStreamObject.IsEmpty then
  begin
    LParam.DataType := ftBlob;
    LParam.Clear;
    Exit;
  end;
  // Create the MemoryStream
  LStream := TMemoryStream.Create;
  try
    // Save the object content into the stream
    LDuckTypedStreamObject.SaveToStream(LStream);
    // Load the stream content into the Param
    LParam.LoadFromStream(LStream, ftBlob);
  finally
    // CleanUp
    LStream.Free;
  end;
  // -------------------------------------------------------------------------------------------------------------------------------
end;

procedure TioQuery.SetParamValueToNull(const AProp: IioProperty; const AForceDataType: TFieldType = ftUnknown);
begin
  // Set the parameter to NULL
  ParamByProp(AProp).Clear;
  // If a DataType is specified then set the parameter DataType
  if AForceDataType <> ftUnknown then
    ParamByProp(AProp).DataType := AForceDataType;
end;

function TioQuery.WhereParamByProp(const AProp: IioProperty): TioParam;
begin
  Result := Self.ParamByName(AProp.GetSqlWhereParamName);
end;

end.
