object FrmCadSimples: TFrmCadSimples
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FrmCadSimples'
  ClientHeight = 178
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 49
    Align = alTop
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 49
    Width = 448
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = FrmPadraoSimples.ImageList3
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmPadraoSimples.ImageList3
    Images = FrmPadraoSimples.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Width = 313
      Caption = 'ToolButton4'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 313
      Top = 0
      Hint = 'Salvar Registro'
      Caption = 'btn_salvar'
      ImageIndex = 3
    end
    object btn_cancelar: TToolButton
      Left = 356
      Top = 0
      Hint = 'Cancelar Registro'
      Caption = 'btn_cancelar'
      ImageIndex = 4
      OnClick = btn_cancelarClick
    end
    object btn_sair: TToolButton
      Left = 399
      Top = 0
      Hint = 'Sair'
      Caption = 'btn_sair'
      ImageIndex = 6
      OnClick = btn_sairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 159
    Width = 448
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object PnlFicha: TPanel
    Left = 0
    Top = 98
    Width = 448
    Height = 61
    Align = alClient
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 71
      Top = 17
      Width = 333
      Height = 21
      TabOrder = 0
    end
  end
end
