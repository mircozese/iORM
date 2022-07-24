{***************************************************************************}
{                                                                           }
{           iORM - (interfaced ORM)                                         }
{                                                                           }
{           Copyright (C) 2015-2016 Maurizio Del Magno                      }
{                                                                           }
{           mauriziodm@levantesw.it                                         }
{           mauriziodelmagno@gmail.com                                      }
{           https://github.com/mauriziodm/iORM.git                          }
{                                                                           }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  This file is part of iORM (Interfaced Object Relational Mapper).         }
{                                                                           }
{  Licensed under the GNU Lesser General Public License, Version 3;         }
{  you may not use this file except in compliance with the License.         }
{                                                                           }
{  iORM is free software: you can redistribute it and/or modify             }
{  it under the terms of the GNU Lesser General Public License as published }
{  by the Free Software Foundation, either version 3 of the License, or     }
{  (at your option) any later version.                                      }
{                                                                           }
{  iORM is distributed in the hope that it will be useful,                  }
{  but WITHOUT ANY WARRANTY; without even the implied warranty of           }
{  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            }
{  GNU Lesser General Public License for more details.                      }
{                                                                           }
{  You should have received a copy of the GNU Lesser General Public License }
{  along with iORM.  If not, see <http://www.gnu.org/licenses/>.            }
{                                                                           }
{***************************************************************************}





unit iORM.Remote.Body.Request;

interface

uses
  iORM.Where.Interfaces, System.JSON, iORM.CommonTypes, iORM.Remote.Interfaces,
  iORM.DB.Interfaces;

type

  TioRemoteRequestBody = class(TInterfacedObject, IioRemoteRequestBody)
  private
    FWhere: IioWhere;
    FSQLDestination: IioSQLDestination;
    FDataObject: TObject;
    FOwnDataObject: Boolean;
    FRelationPropertyName: TioNullableString;
    FRelationOID: TioNullableInteger;
    FBlindInsert: TioNullableBoolean;
    function GetBlindInsert: Boolean;
    function GetDataObject: TObject;
    function GetRelationOID: Integer;
    function GetRelationPropertyName: String;
    function GetWhere: IioWhere;
    function GetSQLDestination: IioSQLDestination;
    procedure SetBlindInsert(const Value: Boolean);
    procedure SetDataObject(const Value: TObject);
    procedure SetRelationOID(const Value: Integer);
    procedure SetRelationPropertyName(const Value: String);
    procedure SetWhere(const Value: IioWhere);
    procedure SetSQLDestination(const Value: IioSQLDestination);
    function ToJSONObject:TJSONObject;
    procedure Clear;
  public
    constructor Create(const AOwnDataObject:Boolean); overload;
    constructor Create(const AJSONObject:TJSONObject; const AOwnDataObject:Boolean); overload;
    constructor Create(const AJSONString:String; const AOwnDataObject:Boolean); overload;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, iORM, DJSON;

{ TioRemoteRequestBody }

constructor TioRemoteRequestBody.Create(const AOwnDataObject:Boolean);
begin
  inherited Create;
  Self.Clear;
  FOwnDataObject := AOwnDataObject;
end;

constructor TioRemoteRequestBody.Create(const AJSONObject: TJSONObject; const AOwnDataObject:Boolean);
var
  LJSONValue: TJSONValue;
begin
  Self.Create(AOwnDataObject);
  // RelationPropertyName
  LJSONValue := AJSONObject.GetValue(KEY_RELATIONPROPERTYNAME);
  if Assigned(LJSONValue) then
    FRelationPropertyName.Value := dj.FromJSON(LJSONValue).&To<String>;
  // RelationOID
  LJSONValue := AJSONObject.GetValue(KEY_RELATIONOID);
  if Assigned(LJSONValue) then
    FRelationOID.Value := dj.FromJSON(LJSONValue).&To<Integer>;
  // BlindInsert
  LJSONValue := AJSONObject.GetValue(KEY_BLINDINSERT);
  if Assigned(LJSONValue) then
    FBlindInsert.Value := dj.FromJSON(LJSONValue).&To<Boolean>;
  // IioWhere
  LJSONValue := AJSONObject.GetValue(KEY_WHERE);
  if Assigned(LJSONValue) then
  begin
    FWhere := io.GlobalFactory.WhereFactory.NewWhere;
    dj.FromJSON(LJSONValue).byFields.TypeAnnotationsON.&To(FWhere);
  end;
  // IioSQLDestination
  LJSONValue := AJSONObject.GetValue(KEY_SQLDESTINATION);
  if Assigned(LJSONValue) then
  begin
    FSQLDestination := io.GlobalFactory.DBFactory.SQLDestination('');
    dj.FromJSON(LJSONValue).byFields.TypeAnnotationsON.&To(FSQLDestination);
  end;
  // DataObject
  LJSONValue := AJSONObject.GetValue(KEY_DATAOBJECT);
  if Assigned(LJSONValue) then
    FDataObject := dj.FromJSON(LJSONValue).byFields.TypeAnnotationsON.ToObject;
end;

procedure TioRemoteRequestBody.Clear;
begin
  FWhere := nil;
  FSQLDestination := nil;
  FDataObject := nil;
end;

constructor TioRemoteRequestBody.Create(const AJSONString: String; const AOwnDataObject:Boolean);
var
  LJSONObject: TJSONObject;
begin
  LJSONObject := TJSONObject.ParseJSONValue(AJSONString) as TJSONObject;
  try
    Self.Create(LJSONObject, AOwnDataObject);
  finally
    LJSONObject.Free;
  end;
end;

destructor TioRemoteRequestBody.Destroy;
begin
  // Clean up
  if FOwnDataObject and Assigned(FDataObject) then
    FDataObject.Free;
  inherited;
end;

function TioRemoteRequestBody.GetBlindInsert: Boolean;
begin
  Result := FBlindInsert.Value;
end;

function TioRemoteRequestBody.GetDataObject: TObject;
begin
  Result := FDataObject;
end;

function TioRemoteRequestBody.GetRelationOID: Integer;
begin
  Result := FRelationOID.Value;
end;

function TioRemoteRequestBody.GetRelationPropertyName: String;
begin
  Result := FRelationPropertyName.Value;
end;

function TioRemoteRequestBody.GetSQLDestination: IioSQLDestination;
begin
  Result := FSQLDestination;
end;

function TioRemoteRequestBody.GetWhere: IioWhere;
begin
  Result := FWhere;
end;

procedure TioRemoteRequestBody.SetBlindInsert(const Value: Boolean);
begin
  FBlindInsert.Value := Value;
end;

procedure TioRemoteRequestBody.SetDataObject(const Value: TObject);
begin
  FDataObject := Value;
end;

procedure TioRemoteRequestBody.SetRelationOID(const Value: Integer);
begin
  FRelationOID.Value := Value;
end;

procedure TioRemoteRequestBody.SetRelationPropertyName(const Value: String);
begin
  FRelationPropertyName.Value := Value;
end;

procedure TioRemoteRequestBody.SetSQLDestination(const Value: IioSQLDestination);
begin
  FSQLDestination := Value;
end;

procedure TioRemoteRequestBody.SetWhere(const Value: IioWhere);
begin
  FWhere := Value;
end;

function TioRemoteRequestBody.ToJSONObject: TJSONObject;
var
  LJSONValue: TJSONValue;
begin
  Result := TJSONObject.Create;
  // RelationPropertyName
  if FRelationPropertyName.HasValue then
  begin
    LJSONValue := TJSONString.Create(FRelationPropertyName.Value);
    Result.AddPair(KEY_RELATIONPROPERTYNAME, LJSONValue);
  end;
  // RelationOID
  if FRelationOID.HasValue then
  begin
    LJSONValue := TJSONNumber.Create(FRelationOID.Value);
    Result.AddPair(KEY_RELATIONOID, LJSONValue);
  end;
  // BlindInsert
  if FBlindInsert.HasValue then
  begin
    LJSONValue := TJSONBool.Create(FBlindInsert.Value);
    Result.AddPair(KEY_BLINDINSERT, LJSONValue);
  end;
  // IioWhere
  if Assigned(FWhere) then
  begin
    LJSONValue := dj.From(FWhere).byFields.TypeAnnotationsON.ToJsonValue;
    Result.AddPair(KEY_WHERE, LJSONValue);
  end;
  // SQLDestination
  if Assigned(FSQLDestination) then
  begin
    LJSONValue := dj.From(FSQLDestination).byFields.TypeAnnotationsON.ToJsonValue;
    Result.AddPair(KEY_SQLDESTINATION, LJSONValue);
  end;
  // DataOject
  if Assigned(FDataObject) then
  begin
    LJSONValue := dj.From(FDataObject).byFields.TypeAnnotationsON.ToJsonValue;
    Result.AddPair(KEY_DATAOBJECT, LJSONValue);
  end;
end;

end.
