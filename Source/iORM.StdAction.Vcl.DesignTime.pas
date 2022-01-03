unit iORM.StdAction.Vcl.DesignTime;

interface

procedure Register;

implementation

uses
  iORM.DB.Components.BindSourceObjState.StdActions.VCL, System.Actions;

procedure Register;
begin
  RegisterActions('iORM-BSObjState', [TioBSObjStateSave], nil);
  RegisterActions('iORM-BSObjState', [TioBSObjStateClear], nil);
  RegisterActions('iORM-BSObjState', [TioBSObjStatePersist], nil);
  RegisterActions('iORM-BSObjState', [TioBSObjStateRevert], nil);
end;

end.