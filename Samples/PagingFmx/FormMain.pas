unit FormMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, iORM.DB.Components.ConnectionDef,
  iORM.AbstractionLayer.Framework.FMX, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, System.Rtti, FMX.Grid.Style,
  Data.Bind.Components, Data.Bind.ObjectScope, iORM.LiveBindings.PrototypeBindSource, FMX.ScrollBox, FMX.Grid, Data.Bind.GenData,
  Fmx.Bind.GenData, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Grid;

type
  TMainForm = class(TForm)
    ioFMX1: TioFMX;
    SQLiteConn: TioSQLiteConnectionDef;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Grid1: TGrid;
    PBSArticles: TioPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkGridToDataSourcePBSArticles: TLinkGridToDataSource;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  SampleData, iORM.LiveBindings.Interfaces;

{$R *.fmx}

procedure TMainForm.Button1Click(Sender: TObject);
begin
  TSampleData.CreateSampleData(Edit1.Text.ToInteger);
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  PBSArticles.Refresh(True);
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  PBSArticles.ioPaging.NextPage;
  PBSArticles.Refresh(True);
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  PBSArticles.ioPaging.PrevPage;
  PBSArticles.Refresh(True);
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
  PBSArticles.Refresh(False);
end;

end.
