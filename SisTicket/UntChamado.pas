unit UntChamado;

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
  TFrmchamado = class(TFrmPadrao1)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DSFuncionarios: TDataSource;
    FDQryFuncionarios: TFDQuery;
    DBEdit5: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    FDQryTipo: TFDQuery;
    DSTipo: TDataSource;
    FDTabelaid: TFDAutoIncField;
    FDTabelaid_responsavel: TIntegerField;
    FDTabelaid_solicitante: TIntegerField;
    FDTabeladata_inc: TDateField;
    FDTabeladata_alt: TDateField;
    FDTabeladata_prazo: TDateField;
    FDTabeladescricao: TStringField;
    FDTabelaobservacao: TStringField;
    FDTabelaid_status: TIntegerField;
    FDTabelaid_tipo: TIntegerField;
    FDTabelastatus: TStringField;
    DBMemo2: TDBMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmchamado: TFrmchamado;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmchamado.FormActivate(Sender: TObject);
begin
  inherited;
      FDQryFuncionarios.Close;
      FDQryFuncionarios.open();
      FDQryTipo.Close;
      FDQryTipo.Open();
end;

end.
