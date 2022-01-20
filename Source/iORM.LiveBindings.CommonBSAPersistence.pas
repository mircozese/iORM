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

unit iORM.LiveBindings.CommonBSAPersistence;

interface

uses
  iORM.LiveBindings.Interfaces, iORM.Where.Interfaces, iORM.CommonTypes,
  iORM.Context.Container, iORM.LiveBindings.BSPersistence;

type

  TioCommonBSAPersistenceThreadExecute = reference to function: TObject;
  TioCommonBSAPersistenceThreadOnTerminate = reference to procedure(AResultValue: TObject);

  TioCommonBSAPersistence = class
  private
    class procedure _Execute(const AASync: Boolean; AExecuteMethod: TioCommonBSAPersistenceThreadExecute;
      ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate); static;
    class procedure _SyncExecute(AExecuteMethod: TioCommonBSAPersistenceThreadExecute; ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate); static;
    class procedure _AsyncExecute(AExecuteMethod: TioCommonBSAPersistenceThreadExecute; ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate); static;
    class procedure _LoadSingle(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere;
      ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
    class procedure _LoadList(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere; ATargetClass: TioClassRef;
      ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
    class procedure _LoadToList(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere; ATargetList: TObject;
      ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
    class procedure _RefreshNoReload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean); static;
    class procedure _RefreshReload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean); static;
    class procedure _SetItemCountToPageManager(const ATypeName, ATypeAlias: String; AWhere: IioWhere);
  public
    // Load
    class procedure Load(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    class procedure LoadPage(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Refresh/ Reload
    class procedure Refresh(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const AReloadData, ANotify: Boolean); static;
    class procedure Reload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Delete
    class procedure BSPersistenceDelete(const ABindSource: IioBSPersistenceClient); static;
    class procedure BeforeDelete(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    class procedure AfterDelete(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Post
    class procedure Post(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Persist
    class procedure PersistCurrent(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    class procedure PersistAll(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Scroll
    class procedure AfterScroll(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
    // Edit
    class procedure BeforeEdit(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter); static;
  end;

implementation

uses System.Classes, System.SysUtils, iORM.Exceptions, iORM, iORM.LiveBindings.Factory,
  iORM.Context.Properties.Interfaces, Data.Bind.ObjectScope, System.Generics.Collections,
  iORM.LiveBindings.CommonBSAPaging, iORM.LiveBindings.Notification,
  iORM.Utilities;

type

  TioCommonBSAAnonymousMethodsFactory = class
  public
    // persist
    class function GetPersistCurrentExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter): TioCommonBSAPersistenceThreadExecute;
    class function GetPersistAllExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter): TioCommonBSAPersistenceThreadExecute;
    // Delete
    class function GetDeleteExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ADataObj: TObject)
      : TioCommonBSAPersistenceThreadExecute;
    class function GetDeleteTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter): TioCommonBSAPersistenceThreadOnTerminate;
    // Refresh
    class function GetRefreshTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean)
      : TioCommonBSAPersistenceThreadOnTerminate;
    // LoadPage (progressive)
    class function GetProgressiveLoadPageTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter): TioCommonBSAPersistenceThreadOnTerminate;
    // Other
    class function GetNotifyTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter): TioCommonBSAPersistenceThreadOnTerminate;
  end;

  TioCommonBSAPersistenceThread = class(TThread)
  strict private
    FExceptionText: String;
    FExecuteFunc: TioCommonBSAPersistenceThreadExecute;
    FOnTerminateProc: TioCommonBSAPersistenceThreadOnTerminate;
    FResultValue: TObject;
  strict protected
    procedure Execute; override;
    procedure OnTerminateEventHandler(Sender: TObject);
  public
    constructor Create(AExecuteFunc: TioCommonBSAPersistenceThreadExecute; AOnTerminateProc: TioCommonBSAPersistenceThreadOnTerminate); overload;
    function ResultValue: TObject;
  end;

  { TioCommonBSAPersistence }

class procedure TioCommonBSAPersistence._AsyncExecute(AExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
begin
  io.ShowWait;
  // Create and execute the thread
  TioCommonBSAPersistenceThread.Create(AExecuteMethod, ATerminateMethod).Start;
end;

class procedure TioCommonBSAPersistence._Execute(const AASync: Boolean; AExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
begin
  if AASync then
    _AsyncExecute(AExecuteMethod, ATerminateMethod)
  else
    _SyncExecute(AExecuteMethod, ATerminateMethod);
end;

class procedure TioCommonBSAPersistence.BeforeEdit(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
begin
  AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(TioBSNotificationType.ntSaveRevertPoint));
end;

class procedure TioCommonBSAPersistence.BSPersistenceDelete(const ABindSource: IioBSPersistenceClient);
var
  LActiveBindSourceAdapter: IioActiveBindSourceAdapter;
  LExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  LActiveBindSourceAdapter := ABindSource.GetActiveBindSourceAdapter;
  // If current is nil then exit
  if not Assigned(LActiveBindSourceAdapter.Current) then
    Exit;
  // Set anonimous methods
  LExecuteMethod := TioCommonBSAAnonymousMethodsFactory.GetDeleteExecuteMethod(LActiveBindSourceAdapter, LActiveBindSourceAdapter.Current);
  LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetDeleteTerminateMethod(LActiveBindSourceAdapter);
  // Execute synchronous or asynchronous
  _Execute(LActiveBindSourceAdapter.ioAsync, LExecuteMethod, LTerminateMethod);
end;

class procedure TioCommonBSAPersistence.BeforeDelete(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LNotification: TioBSNotification;
begin
  // If it is during a BSPersistenceDeleting operation or current is nil or if daSetSmartDeleteSystem is selected as OnDeleteAction on the MasterBS
  if AActiveBindSourceAdapter.BSPersistenceDeleting or (AActiveBindSourceAdapter.Current = nil) or
    AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.CreateDeleteSmartNotification(AActiveBindSourceAdapter.Current)) then
    Exit;
  // If UseObjStatus is true then set ObjStatus propriety and abort (If "daSetObjStatusIfExists" delete mode is selected as OnDeleteAction on the MasterBS)
  if AActiveBindSourceAdapter.UseObjStatus and AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(ntDeleteObjStatus))
  then
  begin
    AActiveBindSourceAdapter.SetObjStatus(osDeleted);
    Abort;
  end;
end;

class procedure TioCommonBSAPersistence.AfterDelete(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LBSPersistenceClient: IioBSPersistenceClient;
begin
  // If it is a MasterBindSource then clear the BSPersistence revert point
  if AActiveBindSourceAdapter.HasBindSource and Supports(AActiveBindSourceAdapter.GetBindSource, IioBSPersistenceClient, LBSPersistenceClient) then
    LBSPersistenceClient.Persistence.Clear(False);
  // DataSet synchro
  AActiveBindSourceAdapter.GetDataSetLinkContainer.Refresh;
end;

class procedure TioCommonBSAPersistence.Load(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LTargetClass: TioClassRef;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  LTargetClass := nil;
  // If AutoLoadData is disabled then exit
  // Prevent AutoLoadData when reloading
  if AActiveBindSourceAdapter.Reloading or not AActiveBindSourceAdapter.ioAutoLoadData then
    Exit;
  // If it's a ListBindSourceAdapter then retrieve the list target class
  if Assigned(AActiveBindSourceAdapter.DataObject) then
    LTargetClass := AActiveBindSourceAdapter.DataObject.ClassType;
  // Set the OnTerminate method
  LTerminateMethod := procedure(AResultValue: TObject)
    var
      LIntf: IInterface;
    begin
      if AActiveBindSourceAdapter.IsInterfaceBSA and Supports(AResultValue, IInterface, LIntf) then
        AActiveBindSourceAdapter.InternalSetDataObject(LIntf, AActiveBindSourceAdapter.ioOwnsObjects)
      else
        AActiveBindSourceAdapter.InternalSetDataObject(AResultValue, AActiveBindSourceAdapter.ioOwnsObjects);
    end;
  // Load
  case AActiveBindSourceAdapter.ioViewDataType of
    TioViewDataType.dtSingle:
      _LoadSingle(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTerminateMethod);
    TioViewDataType.dtList:
      _LoadList(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTargetClass, LTerminateMethod);
  else
    raise EioException.Create('TioCommonBSAPersistence.Load: wrong ViewDataType.');
  end;
end;

class procedure TioCommonBSAPersistence.LoadPage(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LPagingObj: TioCommonBSAPageManager;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  // If the adapter is a detail adapter or AutoLoadData is not active then do not execute
  if AActiveBindSourceAdapter.HasMasterBSA or (AActiveBindSourceAdapter.ioViewDataType <> dtList) or not AActiveBindSourceAdapter.ioAutoLoadData then
    Exit;
  // Extract the paging obj from the where obj
  LPagingObj := AActiveBindSourceAdapter.ioWhere.GetPagingObj as TioCommonBSAPageManager;
  // Load next page
  if LPagingObj.IsProgressive then
  begin
    // If the pagination is progressive then it loads the next page and adds it to the
    // internal list of the BSA and then does a Refresh(False)
    LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetProgressiveLoadPageTerminateMethod(AActiveBindSourceAdapter);
    _LoadToList(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
      AActiveBindSourceAdapter.DataObject, LTerminateMethod);
  end
  else
    // If, on the other hand, the pagination is not progressive then it performs a normal Refresh(True)
    // which in practice causes a normal loading in a new list which is then set as a new DataObject
    _RefreshReload(AActiveBindSourceAdapter, False);
end;

class procedure TioCommonBSAPersistence.Refresh(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const AReloadData, ANotify: Boolean);
begin
  // Se il BindSourceAdapter � un dettaglio allora propaga il Refresh al suo Master
  // questo perch� solo il master esegue realmente le query e quindi � quest'ultimo che
  // deve gestire il refresh con reload.
  if AActiveBindSourceAdapter.HasMasterBSA and Assigned(AActiveBindSourceAdapter.GetMasterBindSourceAdapter) and AReloadData then
    AActiveBindSourceAdapter.GetMasterBindSourceAdapter.Refresh(AReloadData)
  else if AReloadData and AActiveBindSourceAdapter.ioAutoLoadData then
    _RefreshReload(AActiveBindSourceAdapter, ANotify)
  else
    _RefreshNoReload(AActiveBindSourceAdapter, ANotify);
end;

class procedure TioCommonBSAPersistence.AfterScroll(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
begin
  // Set the new master object (only for list BSA)
  if AActiveBindSourceAdapter.ioViewDataType = dtList then
    AActiveBindSourceAdapter.DetailAdaptersContainer.SetMasterObject(AActiveBindSourceAdapter.Current);
  // DataSet synchro
  AActiveBindSourceAdapter.GetDataSetLinkContainer.SetRecNo(AActiveBindSourceAdapter.ItemIndex);
  // Paging & BSPersistence notification
  AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(TioBSNotificationType.ntScroll));
end;

class procedure TioCommonBSAPersistence._RefreshNoReload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean);
begin
  AActiveBindSourceAdapter.AsTBindSourceAdapter.Refresh;
  // Also refresh any DataSets
  AActiveBindSourceAdapter.GetDataSetLinkContainer.Refresh(True); // Force
  // Send a notification to other ActiveBindSourceAdapters & BindSource
  if ANotify then
    AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(ntRefresh));
end;

class procedure TioCommonBSAPersistence._RefreshReload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean);
var
  LPagingObj: TioCommonBSAPageManager;
  LTargetClass: TioClassRef;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  LTargetClass := nil;
  // Prevent AutoLoadData when activating the BSA
  AActiveBindSourceAdapter.Reloading := True;
  // If it's a ListBindSourceAdapter then retrieve the list target class
  if Assigned(AActiveBindSourceAdapter.DataObject) then
    LTargetClass := AActiveBindSourceAdapter.DataObject.ClassType;
  // Set the OnTerminate method
  LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetRefreshTerminateMethod(AActiveBindSourceAdapter, ANotify);
  // Extract the paging obj from the where obj and prepare it for an HardRefresh
  LPagingObj := AActiveBindSourceAdapter.ioWhere.GetPagingObj as TioCommonBSAPageManager;
  LPagingObj.PrepareForRefresh;
  // Load
  case AActiveBindSourceAdapter.ioViewDataType of
    TioViewDataType.dtSingle:
      _LoadSingle(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTerminateMethod);
    TioViewDataType.dtList:
      _LoadList(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTargetClass, LTerminateMethod);
  else
    raise EioException.Create('TioCommonBSAPersistence._RefreshReload: wrong ViewDataType.');
  end;
end;

class procedure TioCommonBSAPersistence.Reload(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LPagingObj: TioCommonBSAPageManager;
  LTargetClass: TioClassRef;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  // Checks
  if AActiveBindSourceAdapter.GetBindSource = nil then
    raise EioException.Create(ClassName, 'Reload', Format('Unassigned bind source (TypeName = "%s", TypeAlias = "%s")',
      [AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias]));
  if not AActiveBindSourceAdapter.GetBindSource.IsMasterBS then
    raise EioException.Create(ClassName, 'Reload',
      Format('This is isn''t a master bind source  (TypeName = "%s", TypeAlias = "%s").'#13'Reload is for master bind source only.',
      [AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias]));

  LTargetClass := nil;
  // Prevent AutoLoadData when activating the BSA
  AActiveBindSourceAdapter.Reloading := True;
  // If it's a ListBindSourceAdapter then retrieve the list target class
  if Assigned(AActiveBindSourceAdapter.DataObject) then
    LTargetClass := AActiveBindSourceAdapter.DataObject.ClassType;
  // Set the OnTerminate method
  LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetRefreshTerminateMethod(AActiveBindSourceAdapter, False); // Notify = false (verificare)
  // Extract the paging obj from the where obj and prepare it for an HardRefresh
  LPagingObj := AActiveBindSourceAdapter.ioWhere.GetPagingObj as TioCommonBSAPageManager;
  LPagingObj.PrepareForRefresh;
  // Load
  case AActiveBindSourceAdapter.ioViewDataType of
    TioViewDataType.dtSingle:
      _LoadSingle(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTerminateMethod);
    TioViewDataType.dtList:
      _LoadList(AActiveBindSourceAdapter.ioAsync, AActiveBindSourceAdapter.ioTypeName, AActiveBindSourceAdapter.ioTypeAlias, AActiveBindSourceAdapter.ioWhere,
        LTargetClass, LTerminateMethod);
  else
    raise EioException.Create('TioCommonBSAPersistence._Reload: wrong ViewDataType.');
  end;
end;

class procedure TioCommonBSAPersistence.PersistAll(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  // If it's a single object then call the normal PersistCurrent method and exit
  if AActiveBindSourceAdapter.ioViewDataType = TioViewDataType.dtSingle then
  begin
    PersistCurrent(AActiveBindSourceAdapter);
    Exit;
  end;
  // if editing the post
  if AActiveBindSourceAdapter.State in seEditModes then
    AActiveBindSourceAdapter.Post;
  // Set anonimous methods then execute
  LExecuteMethod := TioCommonBSAAnonymousMethodsFactory.GetPersistAllExecuteMethod(AActiveBindSourceAdapter);
  LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetNotifyTerminateMethod(AActiveBindSourceAdapter);
  _Execute(AActiveBindSourceAdapter.ioAsync, LExecuteMethod, LTerminateMethod);
end;

class procedure TioCommonBSAPersistence.PersistCurrent(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
var
  LExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  LTerminateMethod: TioCommonBSAPersistenceThreadOnTerminate;
begin
  // if editing the post
  if AActiveBindSourceAdapter.State in seEditModes then
    AActiveBindSourceAdapter.Post;
  // Set anonimous methods then execute
  LExecuteMethod := TioCommonBSAAnonymousMethodsFactory.GetPersistCurrentExecuteMethod(AActiveBindSourceAdapter);
  LTerminateMethod := TioCommonBSAAnonymousMethodsFactory.GetNotifyTerminateMethod(AActiveBindSourceAdapter);
  _Execute(AActiveBindSourceAdapter.ioAsync, LExecuteMethod, LTerminateMethod);
end;

class procedure TioCommonBSAPersistence.Post(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter);
begin
  AActiveBindSourceAdapter.SetObjStatus(osDirty);
end;

class procedure TioCommonBSAPersistence._SetItemCountToPageManager(const ATypeName, ATypeAlias: String; AWhere: IioWhere);
var
  LCount: Integer;
  LPagingObj: TioCommonBSAPageManager;
begin
  LCount := io.Load(ATypeName, ATypeAlias)._Where(AWhere).GetCount;
  LPagingObj := AWhere.GetPagingObj as TioCommonBSAPageManager;
  LPagingObj.SetItemCount(LCount);
end;

class procedure TioCommonBSAPersistence._SyncExecute(AExecuteMethod: TioCommonBSAPersistenceThreadExecute;
  ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
var
  LResultValue: TObject;
begin
  io.ShowWait;
  try
    // Execute core code
    LResultValue := AExecuteMethod;
    // Execute OnTerminate code
    if Assigned(ATerminateMethod) then
      ATerminateMethod(LResultValue);
  finally
    io.HideWait;
  end;
end;

class procedure TioCommonBSAPersistence._LoadList(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere; ATargetClass: TioClassRef;
  ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
begin
  _Execute(AASync,
    function: TObject
    begin
      io.StartTransaction;
      try
        // Load list
        Result := io.Load(ATypeName, ATypeAlias)._Where(AWhere).ToList(ATargetClass);
        // Load count
        _SetItemCountToPageManager(ATypeName, ATypeAlias, AWhere);
        io.CommitTransaction;
      except
        io.RollbackTransaction;
        raise;
      end;
    end, ATerminateMethod);
end;

class procedure TioCommonBSAPersistence._LoadToList(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere; ATargetList: TObject;
ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
begin
  _Execute(AASync,
    function: TObject
    begin
      io.StartTransaction;
      try
        // Load to list
        Result := nil;
        io.Load(ATypeName, ATypeAlias)._Where(AWhere).ToList(ATargetList);
        // Load count
        _SetItemCountToPageManager(ATypeName, ATypeAlias, AWhere);
        io.CommitTransaction;
      except
        io.RollbackTransaction;
        raise;
      end;
    end, ATerminateMethod);
end;

class procedure TioCommonBSAPersistence._LoadSingle(const AASync: Boolean; const ATypeName, ATypeAlias: String; AWhere: IioWhere;
ATerminateMethod: TioCommonBSAPersistenceThreadOnTerminate);
begin
  _Execute(AASync,
    function: TObject
    begin
      Result := io.Load(ATypeName, ATypeAlias)._Where(AWhere).ToObject;
    end, ATerminateMethod);
end;

{ TioCommonBSAPersistenceThread }

constructor TioCommonBSAPersistenceThread.Create(AExecuteFunc: TioCommonBSAPersistenceThreadExecute;
AOnTerminateProc: TioCommonBSAPersistenceThreadOnTerminate);
begin
  inherited Create(True);
  FExecuteFunc := AExecuteFunc;
  FOnTerminateProc := AOnTerminateProc;
  FExceptionText := String.Empty;
  FResultValue := nil;
  Self.OnTerminate := OnTerminateEventHandler;
  Self.FreeOnTerminate := True;
end;

procedure TioCommonBSAPersistenceThread.Execute;
begin
  inherited;
  try
    FResultValue := FExecuteFunc;
  except
    on E: Exception do
      FExceptionText := E.Message;
  end;
end;

procedure TioCommonBSAPersistenceThread.OnTerminateEventHandler(Sender: TObject);
begin
  try
    // Se durante l'esecuzione del thread c'� stata una eccezione...
    if not FExceptionText.IsEmpty then
    begin
      io.HideWait;
      raise EioException.Create('(' + Self.ClassName + ') - ' + FExceptionText);
    end
    else if Assigned(FOnTerminateProc) then
      FOnTerminateProc(FResultValue);
  finally
    io.HideWait;
  end;
end;

function TioCommonBSAPersistenceThread.ResultValue: TObject;
begin
  Result := FResultValue;
end;

{ TioCommonBSAAnonymousMethodsFactory }

class function TioCommonBSAAnonymousMethodsFactory.GetDeleteExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ADataObj: TObject)
  : TioCommonBSAPersistenceThreadExecute;
var
  LID: Integer;
  LClassName: String;
begin
  // Save into local variables to avoid multithread resource access inconsistency problems
  LClassName := ADataObj.ClassName;
  LID := TioUtilities.ExtractOID(ADataObj);
  AActiveBindSourceAdapter.BSPersistenceDeleting := True; // Look at GetDeleteTerminateMethod below
  Result := function: TObject
    begin
      Result := nil;
      io.RefTo(LClassName).ByID(LID).Delete;
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetDeleteTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter)
  : TioCommonBSAPersistenceThreadOnTerminate;
begin
  Result := procedure(AResultValue: TObject)
    begin
      AActiveBindSourceAdapter.Delete;
      AActiveBindSourceAdapter.BSPersistenceDeleting := False; // Look at GetDeleteExecuteMethod above
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetNotifyTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter)
  : TioCommonBSAPersistenceThreadOnTerminate;
begin
  Result := procedure(AResultValue: TObject)
    begin
      // Send a notification to other ActiveBindSourceAdapters & BindSource
      AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(ntRefresh));
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetPersistAllExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter)
  : TioCommonBSAPersistenceThreadExecute;
begin
  Result := function: TObject
    begin
      Result := nil;
      io.PersistCollection(AActiveBindSourceAdapter.DataObject, False);
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetPersistCurrentExecuteMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter)
  : TioCommonBSAPersistenceThreadExecute;
begin
  Result := function: TObject
    begin
      Result := nil;
      io.Persist(AActiveBindSourceAdapter.Current, False);
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetProgressiveLoadPageTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter)
  : TioCommonBSAPersistenceThreadOnTerminate;
begin
  Result := procedure(AResultValue: TObject)
    begin
      // Perform a RefreshNoReload without nofications
      TioCommonBSAPersistence._RefreshNoReload(AActiveBindSourceAdapter, False);
    end;
end;

class function TioCommonBSAAnonymousMethodsFactory.GetRefreshTerminateMethod(const AActiveBindSourceAdapter: IioActiveBindSourceAdapter; const ANotify: Boolean)
  : TioCommonBSAPersistenceThreadOnTerminate;
begin
  Result := procedure(AResultValue: TObject)
    var
      LIntf: IInterface;
    begin
      // Close the BSA, substitute the DataObject then reopen
      if AActiveBindSourceAdapter.IsInterfaceBSA and Supports(AResultValue, IInterface, LIntf) then
        AActiveBindSourceAdapter.InternalSetDataObject(LIntf, AActiveBindSourceAdapter.ioOwnsObjects)
      else
        AActiveBindSourceAdapter.InternalSetDataObject(AResultValue, AActiveBindSourceAdapter.ioOwnsObjects);
      // Prevent AutoLoadData when activating the BSA
      AActiveBindSourceAdapter.Reloading := False;
      // Send a notification to other ActiveBindSourceAdapters & BindSource
      if ANotify then
        AActiveBindSourceAdapter.Notify(TObject(AActiveBindSourceAdapter), TioBSNotification.Create(ntRefresh));
    end;
end;

end.
