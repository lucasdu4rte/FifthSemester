unit UntAtendeChamado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask;

type
  TFrmAtendeChamado = class(TFrmPadrao1)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBEdit3: TDBEdit;
    FDQryFuncionarios: TFDQuery;
    DSFuncionarios: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtendeChamado: TFrmAtendeChamado;

implementation

{$R *.dfm}

uses UntDM;

end.
