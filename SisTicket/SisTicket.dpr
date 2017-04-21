program SisTicket;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmMenuPrincipal},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntPadrao1 in 'UntPadrao1.pas' {FrmPadrao1},
  UntFuncionarios in 'UntFuncionarios.pas' {FrmFuncionarios},
<<<<<<< HEAD
  UntPadraoSimples in 'UntPadraoSimples.pas' {FrmPadraoSimples},
  UntDepartamento in 'UntDepartamento.pas' {FrmDepartamento},
  UntCadSimples in 'UntCadSimples.pas' {FrmCadSimples},
  UntCadDepartamento in 'UntCadDepartamento.pas' {FrmCadDepartamento};
=======
  UntChamado in 'UntChamado.pas' {Frmchamado};
>>>>>>> d8106558f11c8e1a558abb45132daa5b7d04428d

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPadrao1, FrmPadrao1);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
<<<<<<< HEAD
  Application.CreateForm(TFrmPadraoSimples, FrmPadraoSimples);
  Application.CreateForm(TFrmDepartamento, FrmDepartamento);
  Application.CreateForm(TFrmCadSimples, FrmCadSimples);
  Application.CreateForm(TFrmCadDepartamento, FrmCadDepartamento);
=======
  Application.CreateForm(TFrmchamado, Frmchamado);
>>>>>>> d8106558f11c8e1a558abb45132daa5b7d04428d
  Application.Run;
end.
