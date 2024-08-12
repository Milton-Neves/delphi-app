object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consulta de Clientes'
  ClientHeight = 461
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 635
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Coluna'
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Operador'
    end
    object Label3: TLabel
      Left = 336
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object cbColuna: TComboBox
      Left = 16
      Top = 37
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'id'
      Items.Strings = (
        'id'
        'nome'
        'datanascimento'
        'email')
    end
    object cbOperador: TComboBox
      Left = 176
      Top = 37
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = '='
      Items.Strings = (
        '='
        '>'
        '<'
        '<>'
        'LIKE')
    end
    object edValor: TEdit
      Left = 336
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 463
      Top = 35
      Width = 106
      Height = 25
      Caption = 'Pesquisar'
      Default = True
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 593
    Height = 364
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\20171148060032\Documents\delphi-app\app 2\libmysql\libm' +
      'ysql.dll'
    Left = 488
    Top = 208
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=clientes'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 288
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 288
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 288
    Top = 360
  end
end
