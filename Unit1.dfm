object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 536
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pane_all: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 536
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 304
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Labe_nom_utilissateur: TLabel
      Left = 202
      Top = 115
      Width = 188
      Height = 50
      Alignment = taCenter
      Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 554
      Top = 112
      Width = 188
      Height = 55
      Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 654
      Top = 16
      Width = 100
      Height = 55
      Alignment = taRightJustify
      Caption = #1575#1604#1587#1575#1593#1577' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labe_time: TLabel
      Left = 464
      Top = 16
      Width = 90
      Height = 55
      Alignment = taCenter
      Caption = #1575#1604#1587#1575#1593#1577' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 279
      Top = 16
      Width = 85
      Height = 55
      Alignment = taRightJustify
      Caption = #1575#1604#1578#1575#1585#1610#1582
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labe_date: TLabel
      Left = 59
      Top = 16
      Width = 73
      Height = 55
      Alignment = taCenter
      Caption = #1575#1604#1578#1575#1585#1610#1582
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 427
      Top = 204
      Width = 384
      Height = 55
      Caption = #1593#1583#1583' '#1575#1604#1606#1602#1585#1575#1578'  '#1593#1604#1609' '#1602#1575#1574#1605#1577' '#1575#1604#1578#1604#1575#1605#1610#1584
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labe_nbr_clic_elev: TLabel
      Left = 301
      Top = 204
      Width = 71
      Height = 55
      Caption = #1575#1604#1585#1602#1605
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -29
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 438
      Top = 284
      Width = 373
      Height = 55
      Caption = #1593#1583#1583' '#1575#1604#1606#1602#1585#1575#1578'  '#1593#1604#1609' '#1602#1575#1574#1605#1577'  '#1575#1604#1586#1576#1575#1574#1606
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labe_nbr_clic_clien: TLabel
      Left = 301
      Top = 278
      Width = 71
      Height = 55
      Caption = #1575#1604#1585#1602#1605
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -29
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 204
      Width = 188
      Height = 55
      Caption = #1575#1604#1593#1583#1583' '#1575#1604#1575#1580#1605#1575#1604#1610
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -29
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_imp_eleve: TButton
      Left = 554
      Top = 384
      Width = 230
      Height = 57
      Caption = #1591#1576#1575#1593#1577' '#1602#1575#1574#1605#1577' '#1575#1604#1578#1604#1575#1605#1610#1584
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_imp_eleveClick
    end
    object btn_imp_clien: TButton
      Left = 27
      Top = 384
      Width = 249
      Height = 57
      Caption = #1591#1576#1575#1593#1577' '#1602#1575#1574#1605#1577' '#1575#1604#1586#1576#1575#1574#1606
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_imp_clienClick
    end
    object Button1: TButton
      Left = 311
      Top = 463
      Width = 186
      Height = 57
      Caption = #1591#1576#1575#1593#1577' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object MaskEdit1: TMaskEdit
      Left = 42
      Top = 296
      Width = 137
      Height = 35
      Alignment = taCenter
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'MaskEdit1'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 64
    Top = 112
  end
end
