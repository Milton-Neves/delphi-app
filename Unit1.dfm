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
        Top = 112
        Width = 8
        Height = 13
        Caption = 'id'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 80
        Top = 155
        Width = 26
        Height = 13
        Caption = 'nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 232
        Top = 112
        Width = 76
        Height = 13
        Caption = 'datanascimento'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 80
        Top = 201
        Width = 24
        Height = 13
        Caption = 'email'
        FocusControl = DBEdit4
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
        Top = 128
        Width = 134
        Height = 21
        DataField = 'id'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 174
        Width = 473
        Height = 21
        DataField = 'nome'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 232
        Top = 128
        Width = 223
        Height = 21
        DataField = 'datanascimento'
        DataSource = DataSource1
        MaxLength = 8
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 220
        Width = 473
        Height = 21
        DataField = 'email'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBImage1: TDBImage
        Left = 592
        Top = 136
        Width = 105
        Height = 105
        DataField = 'foto'
        DataSource = DataSource1
        Proportional = True
        TabOrder = 4
      end
      object Button1: TButton
        Left = 592
        Top = 256
        Width = 105
        Height = 25
        Caption = 'Foto'
        TabOrder = 5
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 368
        Top = 256
        Width = 185
        Height = 25
        Caption = 'Alterar senha...'
        TabOrder = 6
        OnClick = Button2Click
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
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.FDQuery1
    Left = 512
    Top = 496
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 584
    Top = 496
  end
end
