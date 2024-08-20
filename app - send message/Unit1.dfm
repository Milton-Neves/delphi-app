object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sistema de Notifica'#231#245'es do Windows'
  ClientHeight = 364
  ClientWidth = 628
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
    Width = 628
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 635
    object Button1: TButton
      Left = 280
      Top = 17
      Width = 89
      Height = 25
      Caption = 'Enviar'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object edMensagem: TLabeledEdit
      Left = 24
      Top = 19
      Width = 250
      Height = 21
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Mensagem'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 375
      Top = 17
      Width = 113
      Height = 25
      Caption = 'Enviar m'#250'ltiplas'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 494
      Top = 17
      Width = 115
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object lbMensagens: TListBox
    Left = 0
    Top = 57
    Width = 628
    Height = 307
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    ExplicitWidth = 524
    ExplicitHeight = 320
  end
  object NotificationCenter1: TNotificationCenter
    OnReceiveLocalNotification = NotificationCenter1ReceiveLocalNotification
    Left = 248
    Top = 184
  end
end
