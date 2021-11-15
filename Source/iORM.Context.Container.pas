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



unit iORM.Context.Container;

interface

uses
  System.Rtti,
  iORM.CommonTypes,
  iORM.Context.Map.Interfaces, System.Generics.Collections, iORM.Context.Properties.Interfaces;

type

  // Class representing a slot for a Context (ioContexts) (lazy)
  TioMapSlot = class
  strict private
    FClassRef: TioClassRef;
    FMap: IioMap;
  public
    constructor Create(const AClassRef:TioClassRef); overload;
    function GetClassRef: TioClassRef;
    function GetMap: IioMap;
  end;

  // Real ContextContainer instance
  TioMapContainerInstance = TObjectDictionary<String, TioMapSlot>;

  // Class for external access to the ContextContainer
  // The ContextContainer contain all the Entities of the application
  //  for efficient ClassRef reference and is initializated at the start
  //  of the application itself
  TioMapContainer = class
  private
    class var FInternalContainer: TioMapContainerInstance;
    class var FAutodetectedHasManyRelationCollection: TList<IioProperty>;
    // NB: IsValidEntity_diAutoRegister attualmente effettua anche la registrazione delle classi al DIC (magari meglio separare le cose?)
    class function IsValidEntity_diAutoRegister(const AType:TRttiInstanceType): Boolean;
    class procedure Init;
  public
    class procedure Build;
    class procedure CleanUp;
    class procedure Add(const AClassRef: TioClassRef);
    class function GetContainer: TioMapContainerInstance;
    class function Exist(const AClassName:String): Boolean;
    class function GetClassRef(const AClassName:String): TioClassRef;
    class function GetConnectionDefName(const AClassName:String): String;
    class function GetMap(const AClassName:String; const RaiseAnExceptionIfNotFound:Boolean=True): IioMap;
    class function GetAutodetectedHasManyRelationCollection: TList<IioProperty>;
  end;

implementation

uses
  iORM.Context.Factory, iORM.Exceptions,
  iORM.RttiContext.Factory, iORM.Attributes, iORM, System.SysUtils;

{ TioContextContainer }

class procedure TioMapContainer.Add(const AClassRef: TioClassRef);
begin
  if not Exist(AClassRef.ClassName) then
    FInternalContainer.Add(AClassRef.ClassName, TioMapSlot.Create(AClassRef));
end;

class procedure TioMapContainer.Build;
begin
  FInternalContainer := TioMapContainerInstance.Create([doOwnsValues]);
  TioMapContainer.Init;
end;

class procedure TioMapContainer.CleanUp;
begin
  FInternalContainer.Free;
end;

class function TioMapContainer.Exist(const AClassName: String): Boolean;
begin
  Result := FInternalContainer.ContainsKey(AClassName);
end;

class function TioMapContainer.GetAutodetectedHasManyRelationCollection: TList<IioProperty>;
begin
  Result := FAutodetectedHasManyRelationCollection;
end;

class function TioMapContainer.GetClassRef(const AClassName: String): TioClassRef;
begin
  if Self.Exist(AClassName) then
    Result := FInternalContainer.Items[AClassName].GetClassRef
  else
    raise EioException.Create(Self.ClassName + ': class "' + AClassName + '" not found.');
end;

class function TioMapContainer.GetCOnnectionDefName(const AClassName: String): String;
begin
  if Self.Exist(AClassName) then
    Result := FInternalContainer.Items[AClassName].GetMap.GetTable.GetConnectionDefName
  else
    raise EioException.Create(Self.ClassName + ': class "' + AClassName + '" not found.');
end;

class function TioMapContainer.GetContainer: TioMapContainerInstance;
begin
  Result := FInternalContainer;
end;

class function TioMapContainer.GetMap(const AClassName: String; const RaiseAnExceptionIfNotFound:Boolean): IioMap;
begin
  Result := nil;
  if Exist(AClassName) then
    Result := FInternalContainer.Items[AClassName].GetMap
  else
  if RaiseAnExceptionIfNotFound then
    raise EioException.Create(Self.ClassName + ': class "' + AClassName + '" not found.');
end;

class procedure TioMapContainer.Init;
var
  LRttiContext: TRttiContext;
  LRttiType: TRttiType;
begin
  // Create the temporary collection of autodetected hasmany relation virtual properties
  FAutodetectedHasManyRelationCollection := TList<IioProperty>.Create;
  try
    // Init ContextContainer loading all ClassRef relative to the entities (classes)
    //  in the application
    LRttiContext := TioRttiContextFactory.RttiContext;
    for LRttiType in LRttiContext.GetTypes do
    begin
      // Only instance type
      // Only classes with explicit ioTable attribute
      // NB: IsValidEntity_diAutoRegister attualmente effettua anche la registrazione delle classi al DIC (magari meglio separare le cose?)
      if LRttiType.IsInstance and IsValidEntity_diAutoRegister(LRttiType.AsInstance) then
        // Load the current class (entity) into the ContextContainer
        Add(LRttiType.AsInstance.MetaclassType);
    end;

    // Generate childs virtual properties related to autodetected HasMany relations
    TioContextFactory.GenerateAutodetectedHasManyRelationVirtualPropertyOnDetails;

  finally
    FreeAndNil(FAutodetectedHasManyRelationCollection);
  end;
end;

// NB: IsValidEntity_diAutoRegister attualmente effettua anche la registrazione delle classi al DIC (magari meglio separare le cose?)
class function TioMapContainer.IsValidEntity_diAutoRegister(const AType: TRttiInstanceType): Boolean;
type
  TdiImplementsItem = record
    IID: TGUID;
    Alias: String;
  end;
  TdiVVMforItemType = (vvmitView, vvmitViewModel);
  TdiVVMforItem = record
    ItemType: TdiVVMforItemType;
    Target: String;
    Alias: String;
  end;
var
  LAttr: TCustomAttribute;
  LdiRegister: Boolean;
  LdiRegisterAsInterfacedEntity: Boolean;
  LdiAsSingleton: Boolean;
  LdiImplements: array of TdiImplementsItem;
  LdiVVMforItems: array of TdiVVMforItem;
  LdiImplementedInterfaces: TArray<TRttiInterfaceType>;
  Index: Integer;
begin
  // Init
  Result := False;
//  Index := 0;
  LdiRegister := False;
  LdiRegisterAsInterfacedEntity := True;
  LdiAsSingleton := False;
  SetLength(LdiImplements, 0);
  // Loop for attributes
  for LAttr in AType.GetAttributes do
  begin
    // ioEntity attribute (it means it is an entity class)
    if LAttr is ioTable then
      Result := True;
    // DIC - diRegister
    if LAttr is diRegister then
      LdiRegister := True;
    // DIC - diDoNotRegisterAsInterfacedEntity
    if LAttr is diDoNotRegisterAsInterfacedEntity then
      LdiRegisterAsInterfacedEntity := False;
    // DIC - diIsSingleton
    if LAttr is diAsSingleton then
      LdiAsSingleton := True;
    // DIC - diRegister
    if LAttr is diImplements then
    begin
      Index := Length(LdiImplements);
      SetLength(LdiImplements, Index+1);
      LdiImplements[Index].IID := diImplements(LAttr).IID;
      LdiImplements[Index].Alias := diImplements(LAttr).Alias;
    end;
    // DIC - diViewFor
    if LAttr is diViewFor then
    begin
      Index := Length(LdiVVMforItems);
      SetLength(LdiVVMforItems, Index+1);
      LdiVVMforItems[Index].ItemType := vvmitView;
      LdiVVMforItems[Index].Target := diViewFor(LAttr).TargetTypeName;
      LdiVVMforItems[Index].Alias := diViewFor(LAttr).TargetTypeAlias;
    end;
    // DIC - diViewModelFor
    if LAttr is diViewModelFor then
    begin
      Index := Length(LdiVVMforItems);
      SetLength(LdiVVMforItems, Index+1);
      LdiVVMforItems[Index].ItemType := vvmitViewModel;
      LdiVVMforItems[Index].Target := diViewModelFor(LAttr).TargetTypeName;
      LdiVVMforItems[Index].Alias := diViewModelFor(LAttr).TargetTypeAlias;
    end;
  end;
  // Dependency Injection Container - Auto register the class for the resolver (persistance only) to use for load, persist, delete only
  if Result and LdiRegisterAsInterfacedEntity then
  begin
    LdiImplementedInterfaces := AType.GetImplementedInterfaces;
    for Index := Low(LdiImplementedInterfaces) to High(LdiImplementedInterfaces) do
      if (LdiImplementedInterfaces[Index].GUID <> IInterface) then  // NB: Controllare per IInvokable ho visto che non serve perch� non ha un suo GUID
        io.di.RegisterClass(AType).Implements(LdiImplementedInterfaces[Index].GUID, AType.Name).AsEntity.Execute;
  end;
  // Dependency Injection Container - Register the class as is without any interface
  if LdiRegister then
    io.di.RegisterClass(AType).AsSingleton(LdiAsSingleton).Execute;
  // Dependency Injection Container - Register the class as implenter of the interfaces
  if Length(LdiImplements) > 0 then
    for Index := Low(LdiImplements) to High(LdiImplements) do
      io.di
        .RegisterClass(AType)
        .Implements(LdiImplements[Index].IID, LdiImplements[Index].Alias)
        .AsSingleton(LdiAsSingleton)
        .Execute;
  // Dependency Injection Container - Register the class as View or ViewModel for som other classes
  if Length(LdiVVMforItems) > 0 then
    for Index := Low(LdiVVMforItems) to High(LdiVVMforItems) do
    begin
      case LdiVVMforItems[Index].ItemType of
        vvmitView:
          io.di
            .RegisterClass(AType)
            .AsViewFor(LdiVVMforItems[Index].Target, LdiVVMforItems[Index].Alias)
            .AsSingleton(LdiAsSingleton)
            .Execute;
        vvmitViewModel:
          io.di
            .RegisterClass(AType)
            .AsViewModelFor(LdiVVMforItems[Index].Target, LdiVVMforItems[Index].Alias)
            .AsSingleton(LdiAsSingleton)
            .Execute;
      end;
    end;
end;

{ TioContextSlot }

function TioMapSlot.GetClassRef: TioClassRef;
begin
  Result := FClassRef;
end;

function TioMapSlot.GetMap: IioMap;
begin
  Result := FMap;
end;

constructor TioMapSlot.Create(const AClassRef:TioClassRef);
begin
  inherited Create;
  FClassRef := AClassRef;
  FMap := TioContextFactory.Map(FClassRef);
end;


initialization

  // NB: Spostato sulla initialize della unit iORM
  // Create the ContextXontainer Instance and Init it by loading
  //  all entities declarated in the application
//  TioMapContainer.Build;

finalization
  TioMapContainer.CleanUp;

end.
