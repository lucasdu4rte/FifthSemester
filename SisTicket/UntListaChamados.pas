unit UntListaChamados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoSimples, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Vcl.Buttons,
  FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmListaChamados = class(TFrmPadraoSimples)
    SpeedButton1: TSpeedButton;
    FDTable1id: TFDAutoIncField;
    FDTable1id_responsavel: TIntegerField;
    FDTable1id_solicitante: TIntegerField;
    FDTable1data_inc: TDateField;
    FDTable1data_alt: TDateField;
    FDTable1data_prazo: TDateField;
    FDTable1descricao: TStringField;
    FDTable1observacao: TStringField;
    FDTable1id_status: TIntegerField;
    FDTable1id_tipo: TIntegerField;
    FDTable1status: TStringField;
    FDQryFuncionarios: TFDQuery;
    DSFuncionarios: TDataSource;
    FDfuncionario: TFDTable;
    DSFuncioario: TDataSource;
    FDfuncionarioid: TFDAutoIncField;
    FDfuncionariodata_inc: TDateField;
    FDfuncionariodata_alt: TDateField;
    FDfuncionarionome: TStringField;
    FDfuncionariodata_nasc: TStringField;
    FDfuncionarioemail: TStringField;
    FDfuncionariotelefone: TStringField;
    FDfuncionariocelular: TStringField;
    FDfuncionarioramal: TStringField;
    FDfuncionarioid_departamento: TIntegerField;
    FDfuncionariostatus: TStringField;
    FDTable1nome_solicitante: TStringField;
    FDQryDpto: TFDQuery;
    DSDpto: TDataSource;
    FDTable1dpto_solicitante: TStringField;
    Label2: TLabel;
<<<<<<< HEAD
    procedure btn_inserirClick(Sender: TObject);
=======
    FDQryStatus_chamado: TFDQuery;
    DSStatus_chamado: TDataSource;
    FDTable1status_chamado: TStringField;
    FDQryTipo: TFDQuery;
    DSTipo: TDataSource;
    FDTable1Motivo_chamado: TStringField;
    ToolButton1: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
>>>>>>> 4d94f67f1f3af898a9da4018539b9a3566015461
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaChamados: TFrmListaChamados;

implementation

{$R *.dfm}

<<<<<<< HEAD
uses UntDM, UntChamado;procedure TFrmListaChamados.btn_inserirClick(Sender: TObject);
begin
  inherited;
  frmchamado.showmodal;
=======
uses UntDM, UntAtendeChamado ;

procedure TFrmListaChamados.ToolButton1Click(Sender: TObject);
begin
  inherited;
  frmatendechamado.showmodal;
>>>>>>> 4d94f67f1f3af898a9da4018539b9a3566015461
end;

end.
