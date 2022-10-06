unit View.Order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseForForm, iORM, iORM.Attributes, iORM.CommonTypes, iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge,
  iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Model.Order, iORM.MVVM.ViewContextProvider, MicroView.Customer;

type

  [diViewFor(TOrder)]
  TViewOrder = class(TViewBaseForForm)
    PanelPizzas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEditID: TDBEdit;
    DBEditDate: TDBEdit;
    DBEditNote: TDBEdit;
    GridRows: TDBGrid;
    Label6: TLabel;
    DBEditGrandTotal: TDBEdit;
    ButtonDeleteRow: TSpeedButton;
    MDSMasterID: TIntegerField;
    MDSMasterOrderDate: TDateField;
    MDSMasterNote: TStringField;
    MDSMasterGrandTotal: TCurrencyField;
    MDSRows: TioModelDataSet;
    MDSRowsDescription: TStringField;
    MDSRowsPrice: TCurrencyField;
    MDSRowsQty: TIntegerField;
    MDSRowsRowTotal: TCurrencyField;
    SourceRows: TDataSource;
    acDeleteRow: TioViewAction;
    VCProviderOrder: TioViewContextProvider;
    MicroViewCustomer1: TMicroViewCustomer;
    procedure VCProviderOrderRequest(const Sender: TObject; out ResultViewContext: TComponent);
    procedure VCProviderOrderAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TViewOrder.FrameResize(Sender: TObject);
begin
  inherited;
  GridRows.Height := Height - 280;
end;

procedure TViewOrder.VCProviderOrderAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
begin
  inherited;
  (AView as TFrame).Align := alClient;
end;

procedure TViewOrder.VCProviderOrderRequest(const Sender: TObject; out ResultViewContext: TComponent);
begin
  inherited;
  ResultViewContext := PanelPizzas;
end;

end.