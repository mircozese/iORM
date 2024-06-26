{
  ****************************************************************************
  *                                                                          *
  *           iORM - (interfaced ORM)                                        *
  *                                                                          *
  *           Copyright (C) 2015-2023 Maurizio Del Magno                     *
  *                                                                          *
  *           mauriziodm@levantesw.it                                        *
  *           mauriziodelmagno@gmail.com                                     *
  *           https://github.com/mauriziodm/iORM.git                         *
  *                                                                          *
  ****************************************************************************
  *                                                                          *
  * This file is part of iORM (Interfaced Object Relational Mapper).         *
  *                                                                          *
  * Licensed under the GNU Lesser General Public License, Version 3;         *
  *  you may not use this file except in compliance with the License.        *
  *                                                                          *
  * iORM is free software: you can redistribute it and/or modify             *
  * it under the terms of the GNU Lesser General Public License as published *
  * by the Free Software Foundation, either version 3 of the License, or     *
  * (at your option) any later version.                                      *
  *                                                                          *
  * iORM is distributed in the hope that it will be useful,                  *
  * but WITHOUT ANY WARRANTY; without even the implied warranty of           *
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            *
  * GNU Lesser General Public License for more details.                      *
  *                                                                          *
  * You should have received a copy of the GNU Lesser General Public License *
  * along with iORM.  If not, see <http://www.gnu.org/licenses/>.            *
  *                                                                          *
  ****************************************************************************
}
unit iORM.PersistenceStrategy.Http;

interface

uses
  iORM.PersistenceStrategy.Interfaces, iORM.Where.Interfaces, iORM.DB.Interfaces,
  FireDAC.Comp.DataSet, iORM.LiveBindings.BSPersistence, iORM.CommonTypes,
  iORM.SynchroStrategy.Custom;

type

  // TODO: HTTP connection - le eccezioni (almeno alcune come l'eliminazione del cliente dell'ordine delle pizze che causa un fk error) non vengono fuori ma le ritorno solo come errore 505 o similare.

  // Strategy class for database
  TioPersistenceStrategyHttp = class(TioPersistenceStrategyIntf)
  protected
    // ---------- Begin intercepted methods (StrategyInterceptors) ----------
    class procedure _DoPersistObject(const AObj: TObject; const AIntent: TioPersistenceIntentType; const ARelationPropertyName: String; const ARelationOID: Integer;
      const AMasterBSPersistence: TioBSPersistence; const AMasterPropertyName, AMasterPropertyPath: String; const ABlindLevel: Byte); override;
    class procedure _DoPersistList(const AList: TObject; const AIntent: TioPersistenceIntentType; const ARelationPropertyName: String; const ARelationOID: Integer;
      const AMasterBSPersistence: TioBSPersistence; const AMasterPropertyName, AMasterPropertyPath: String; const ABlindLevel: Byte); override;
    class procedure _DoDeleteObject(const AObj: TObject; const AIntent: TioPersistenceIntentType; const ABlindLevel: Byte); override;
    class procedure _DoDeleteList(const AList: TObject; const AIntent: TioPersistenceIntentType; const ABlindLevel: Byte); override;
    class procedure _DoLoadList(const AWhere: IioWhere; const AList: TObject; const AIntent: TioPersistenceIntentType); override;
    class function _DoLoadObject(const AWhere: IioWhere; const AObj: TObject; const AIntent: TioPersistenceIntentType): TObject; override;
    // ---------- End intercepted methods (StrategyInterceptors) ----------
  public
    class procedure StartTransaction(const AConnectionName: String); override;
    class procedure CommitTransaction(const AConnectionName: String); override;
    class procedure RollbackTransaction(const AConnectionName: String); override;
    class function InTransaction(const AConnectionName: String): boolean; override;
    class procedure Delete(const AWhere: IioWhere); override;
    class procedure LoadDataSet(const AWhere: IioWhere; const ADestDataSet: TFDDataSet); override;
    class function LoadObjectByClassOnly(const AWhere: IioWhere; const AObj: TObject; const AIntent: TioPersistenceIntentType): TObject; override;
    class function Count(const AWhere: IioWhere): Integer; override;
    class function Max(const AWhere: IioWhere; const APropertyName: String): Integer; override;
    class function Min(const AWhere: IioWhere; const APropertyName: String): Integer; override;
    // SynchroStrategy
    class procedure DoSynchronization(const APayload: TioCustomSynchroStrategy_Payload); override;
    // SQLDestinations
    class procedure SQLDest_LoadDataSet(const ASQLDestination: IioSQLDestination; const ADestDataSet: TFDDataSet); override;
    class procedure SQLDest_Execute(const ASQLDestination: IioSQLDestination); override;
  end;

implementation

uses
  System.JSON, iORM, System.Classes, iORM.PersistenceStrategy.DB, iORM.DB.ConnectionContainer,
  iORM.DB.Factory, System.Generics.Collections, iORM.Utilities,
  iORM.DuckTyped.Interfaces, iORM.Http.Interfaces, iORM.Http.Factory,
  iORM.Exceptions, System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.StorageJSON,
  iORM.Context.Container, DJSON;

{ TioStrategyHttp }

class function TioPersistenceStrategyHttp.Count(const AWhere: IioWhere): Integer;
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (HTTP) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.Execute(HTTP_METHOD_NAME_COUNT);
    // Deserialize the JSONDataValue to the result object
    Result := LConnection.ioResponseBody.JSONDataValue.AsType<Integer>;
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.Delete(const AWhere: IioWhere);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // Note: In this strategy (HTTP) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.Execute(HTTP_METHOD_NAME_DELETE);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.DoSynchronization(const APayload: TioCustomSynchroStrategy_Payload);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Initialization
  APayload.Initialize;
  // Client-side operations
  APayload.LoadFromClient;
  APayload.SwitchToTargetConnection; // Otherwise after the "LoadFromClient" it remain to local connection and the next line of code raise an exception
  // Server-side operations (APayload.PersistAndReloadFromServer)
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  LConnection.ioRequestBody.Clear;
  LConnection.ioRequestBody.JSONDataValueAsObject := APayload;
  LConnection.Execute(HTTP_METHOD_NAME_DOSYNCHRONIZATION);
  dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.&To(APayload);
  // Client-side operations
  APayload.PersistToClient;
  // Finalization
  APayload.Finalize;
end;

class procedure TioPersistenceStrategyHttp._DoDeleteList(const AList: TObject; const AIntent: TioPersistenceIntentType; const ABlindLevel: Byte);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Check
  if not Assigned(AList) then
    Exit;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.BlindLevel := ABlindLevel;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.JSONDataValueAsObject := AList;
    LConnection.Execute(HTTP_METHOD_NAME_PERSISTLIST);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp._DoDeleteObject(const AObj: TObject; const AIntent: TioPersistenceIntentType; const ABlindLevel: Byte);
var
  LConnectionDefName: String;
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Check
  if not Assigned(AObj) then
    Exit;
  // Get the connection, set the request and execute it
  LConnectionDefName := TioMapContainer.GetConnectionDefName(AObj.ClassName);
  LConnection := TioDBFactory.Connection(LConnectionDefName).AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.BlindLevel := ABlindLevel;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.JSONDataValueAsObject := AObj;
    LConnection.Execute(HTTP_METHOD_NAME_DELETEOBJECT);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.LoadDataSet(const AWhere: IioWhere; const ADestDataSet: TFDDataSet);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.Execute(HTTP_METHOD_NAME_LOADDATASET);
    // Load the dataset
    ADestDataSet.LoadFromStream(LConnection.ioResponseBody.Stream, TFDStorageFormat.sfJSON);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp._DoLoadList(const AWhere: IioWhere; const AList: TObject; const AIntent: TioPersistenceIntentType);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.Execute(HTTP_METHOD_NAME_LOADLIST);
    // Deserialize  the JSONDataValue to the result object
    // NB: Mauri 15/08/2023 (fix issue winth paging when using http connection):
    //      Ho eliminato il "ClearCollection" dalla chiamata a DJSON perch� altrimenti non funzionava bene
    //      il paging ti tipo progressive. In questo modo invece sembra funzionare bene. Spero che la cosa non causi problemi
    //      in altri contesti. Lascio anche a vecchia versione commentata, poi vedremo.
//    dj.FromJSON(LConnection.ResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.&To(AList); // OLD CODE
    dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.TypeAnnotationsON.&To(AList);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class function TioPersistenceStrategyHttp._DoLoadObject(const AWhere: IioWhere; const AObj: TObject; const AIntent: TioPersistenceIntentType): TObject;
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  Result := AObj;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.Execute(HTTP_METHOD_NAME_LOADOBJECT);
    // Deserialize  the JSONDataValue to the result object
    if Assigned(AObj) then
      dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.&To(Result)
    else
      Result := dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.ToObject;
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class function TioPersistenceStrategyHttp.LoadObjectByClassOnly(const AWhere: IioWhere; const AObj: TObject; const AIntent: TioPersistenceIntentType): TObject;
begin
  // This method is only used internally by the Object Maker,
  // and then you do not need to implement it in RESTStrategy.
  raise EioGenericException.Create(Self.ClassName + ': "LoadObjectByClassOnly", method not implemented in this strategy.');
end;

class function TioPersistenceStrategyHttp.Max(const AWhere: IioWhere; const APropertyName: String): Integer;
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (HTTP) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.ioRequestBody.RelationPropertyName := APropertyName;
    LConnection.Execute(HTTP_METHOD_NAME_MAX);
    // Deserialize the JSONDataValue to the result object
    Result := LConnection.ioResponseBody.JSONDataValue.AsType<Integer>;
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class function TioPersistenceStrategyHttp.Min(const AWhere: IioWhere; const APropertyName: String): Integer;
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (HTTP) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.Where := AWhere;
    LConnection.ioRequestBody.RelationPropertyName := APropertyName;
    LConnection.Execute(HTTP_METHOD_NAME_MIN);
    // Deserialize the JSONDataValue to the result object
    Result := LConnection.ioResponseBody.JSONDataValue.AsType<Integer>;
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp._DoPersistList(const AList: TObject; const AIntent: TioPersistenceIntentType; const ARelationPropertyName: String; const ARelationOID: Integer;
      const AMasterBSPersistence: TioBSPersistence; const AMasterPropertyName, AMasterPropertyPath: String; const ABlindLevel: Byte);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Check
  if not Assigned(AList) then
    Exit;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.BlindLevel := ABlindLevel;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.RelationPropertyName := ARelationPropertyName;
    LConnection.ioRequestBody.RelationOID := ARelationOID;
    LConnection.ioRequestBody.JSONDataValueAsObject := AList;
    LConnection.Execute(HTTP_METHOD_NAME_PERSISTLIST);
    // Deserialize the JSONDataValue to update the object with the IDs (after Insert)
    if TioUtilities.BlindLevel_Do_AutoUpdateProps(ABlindLevel) then
      dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.&To(AList);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp._DoPersistObject(const AObj: TObject; const AIntent: TioPersistenceIntentType; const ARelationPropertyName: String; const ARelationOID: Integer;
      const AMasterBSPersistence: TioBSPersistence; const AMasterPropertyName, AMasterPropertyPath: String; const ABlindLevel: Byte);
var
  LConnectionDefName: String;
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Check
  if not Assigned(AObj) then
    Exit;
  // Get the connection, set the request and execute it
  LConnectionDefName := TioMapContainer.GetConnectionDefName(AObj.ClassName);
  LConnection := TioDBFactory.Connection(LConnectionDefName).AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.BlindLevel := ABlindLevel;
    LConnection.ioRequestBody.IntentType := AIntent;
    LConnection.ioRequestBody.RelationPropertyName := ARelationPropertyName;
    LConnection.ioRequestBody.RelationOID := ARelationOID;
    LConnection.ioRequestBody.JSONDataValueAsObject := AObj;
    LConnection.Execute(HTTP_METHOD_NAME_PERSISTOBJECT);
    // Deserialize the JSONDataValue to update the object with the IDs (after Insert)
    if TioUtilities.BlindLevel_Do_AutoUpdateProps(ABlindLevel) then
      dj.FromJSON(LConnection.ioResponseBody.JSONDataValue).OpType(ssHTTP).byFields.ClearCollection.TypeAnnotationsON.&To(AObj);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.SQLDest_Execute(const ASQLDestination: IioSQLDestination);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection(ASQLDestination.GetConnectionDefName).AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.SQLDestination := ASQLDestination;
    LConnection.Execute('SQLDestExecute');
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.SQLDest_LoadDataSet(const ASQLDestination: IioSQLDestination; const ADestDataSet: TFDDataSet);
var
  LConnection: IioConnectionHttp;
begin
  inherited;
  // Get the connection, set the request and execute it
  LConnection := TioDBFactory.Connection('').AsHttpConnection;
  // Start transaction
  // NB: In this strategy (REST) call the Connection.StartTransaction (not the Self.StartTransaction
  // nor io.StartTransaction) because is only for the lifecicle of the connection itself and do not
  // perform any http call to the server at this point.
  LConnection.StartTransaction;
  try
    LConnection.ioRequestBody.Clear;
    LConnection.ioRequestBody.SQLDestination := ASQLDestination;
    LConnection.Execute(HTTP_METHOD_NAME_SQLDESTEXECUTE);
    // Load the dataset
    ADestDataSet.LoadFromStream(LConnection.ioResponseBody.Stream, TFDStorageFormat.sfJSON);
    // Commit
    LConnection.Commit;
  except
    // Rollback
    LConnection.Rollback;
    raise;
  end;
end;

class procedure TioPersistenceStrategyHttp.StartTransaction(const AConnectionName: String);
begin
  inherited;
  TioDBFactory.Connection(AConnectionName).StartTransaction;
end;

class procedure TioPersistenceStrategyHttp.CommitTransaction(const AConnectionName: String);
begin
  inherited;
  TioDBFactory.Connection(AConnectionName).Commit;
end;

class procedure TioPersistenceStrategyHttp.RollbackTransaction(const AConnectionName: String);
begin
  inherited;
  TioDBFactory.Connection(AConnectionName).Rollback;
end;

class function TioPersistenceStrategyHttp.InTransaction(const AConnectionName: String): boolean;
begin
  inherited;
  Result := TioDBFactory.Connection(AConnectionName).InTransaction;
end;

end.
