object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 580
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 741
    Height = 555
    ActivePage = TabCadastros
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 682
    ExplicitHeight = 388
    object tabConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 733
        Height = 527
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datanascimento'
            Width = 115
            Visible = True
          end>
      end
    end
    object TabCadastros: TTabSheet
      Caption = 'Cadastros'
      ImageIndex = 1
      object Label1: TLabel
        Left = 80
        Top = 72
        Width = 8
        Height = 13
        Caption = 'id'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 80
        Top = 120
        Width = 26
        Height = 13
        Caption = 'nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 80
        Top = 224
        Width = 76
        Height = 13
        Caption = 'datanascimento'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 80
        Top = 168
        Width = 24
        Height = 13
        Caption = 'email'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 328
        Top = 221
        Width = 29
        Height = 13
        Caption = 'senha'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 592
        Top = 117
        Width = 20
        Height = 13
        Caption = 'foto'
        FocusControl = DBImage1
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 88
        Width = 134
        Height = 21
        DataField = 'id'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 136
        Width = 473
        Height = 21
        DataField = 'nome'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 240
        Width = 223
        Height = 21
        DataField = 'datanascimento'
        DataSource = DataSource1
        MaxLength = 8
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 187
        Width = 473
        Height = 21
        DataField = 'email'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 328
        Top = 240
        Width = 225
        Height = 21
        DataField = 'senha'
        DataSource = DataSource1
        PasswordChar = '*'
        TabOrder = 4
      end
      object DBImage1: TDBImage
        Left = 592
        Top = 136
        Width = 105
        Height = 105
        DataField = 'foto'
        DataSource = DataSource1
        TabOrder = 5
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 741
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 200
    ExplicitWidth = 240
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.FDQuery1
    Left = 592
    Top = 128
  end
end
