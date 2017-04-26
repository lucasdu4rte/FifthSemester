unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmMenuPrincipal = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    cad_Funcionario: TAction;
    cad_Chamado: TAction;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Action1Execute(Sender: TObject);
    procedure cad_FuncionarioExecute(Sender: TObject);
    procedure cad_ChamadoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

uses UntPadrao1, UntFuncionarios, UntChamado;

procedure TFrmMenuPrincipal.Action1Execute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenuPrincipal.cad_ChamadoExecute(Sender: TObject);
begin
  frmchamado.showmodal;
end;

procedure TFrmMenuPrincipal.cad_FuncionarioExecute(Sender: TObject);
var i:dword;
begin
//if InternetGetConnectedState(@i,0) then
  FrmFuncionarios.ShowModal;
//  else
//  showmessage('Conecte-se a Internet antes de utilizar o sistema de chamados.');
end;

procedure TFrmMenuPrincipal.FormActivate(Sender: TObject);
begin
  WindowState:= wsMaximized;

  StatusBar1.Panels[1].Text:= FormatDateTime(' dddd ", " dd " de " mmmm " de "yyyy', Now);
end;

procedure TFrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Close;
end;

procedure TFrmMenuPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var confSaida: Integer;
begin
  confSaida := Application.MessageBox('Tem certeza que deseja sair do sistema?', 'Aten��o', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

  if confSaida = IDYES then
    Application.Terminate
  else
  CanClose:= false;
end;

procedure TFrmMenuPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:= TimeToStr(Time);
end;

end.
