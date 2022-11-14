unit MicroVM.OrderRowPizza;

interface

uses
  System.SysUtils,
  System.Classes,
  iORM,
  iORM.Attributes,
  iORM.CommonTypes,
  iORM.Where.Interfaces,
  iORM.MVVM.Interfaces,
  iORM.MVVM.ViewModel,
  Model.OrderRow, iORM.MVVM.ModelPresenter.Custom, iORM.MVVM.ModelPresenter.Detail, iORM.MVVM.ModelPresenter.Master, iORM.MVVM.VMAction;

type

  [diViewModelFor(TPizzaOrderRow)]
  TMicroVMOrderRowPizza = class(TioViewModel)
    MPOrderRow: TioModelPresenterDetail;
    acDelete: TioVMAction;
    acShow: TioVMAction;
    MPPizza: TioModelPresenterDetail;
    procedure acDeleteExecute(Sender: TObject);
    procedure acShowExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Interfaces;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TMicroVMOrderRowPizza.acDeleteExecute(Sender: TObject);
begin
  // Note: If you want to close the micro embeded view you have to call the
  //        CloseViews/Free command after the Delete and inside a finally part
  //        of a try-finally block because otherwise it would never be executed
  //        due to an "Abort" within the code that manages the Delete in the NaturalBindSource.
  try
    MPOrderRow.Delete;
  finally
    CloseViews;
  end;
end;

procedure TMicroVMOrderRowPizza.acShowExecute(Sender: TObject);
begin
  MPPizza.ShowCurrent;
end;

end.