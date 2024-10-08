unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Notification;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    edMensagem: TLabeledEdit;
    Button2: TButton;
    lbMensagens: TListBox;
    NotificationCenter1: TNotificationCenter;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  notificacao: TNotification;
begin
  notificacao := NotificationCenter1.CreateNotification();
  try
    notificacao.Name := 'Notificacao01';
    notificacao.Title := 'Aten��o: voc� tem uma nova mensagem';
    notificacao.AlertBody := edMensagem.Text;
    NotificationCenter1.PresentNotification(notificacao);
  finally
    notificacao.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  notificacaoA, notificacaoB: TNotification;
begin
  notificacaoA := NotificationCenter1.CreateNotification();
  try
    notificacaoA.Name := 'NotificacaoA';
    notificacaoA.Title := 'Aten��o: voc� tem uma nova mensagem';
    notificacaoA.AlertBody := edMensagem.Text;
    NotificationCenter1.PresentNotification(notificacaoA);
  finally
    notificacaoA.Free;
  end;
  notificacaoB := NotificationCenter1.CreateNotification();
  try
    notificacaoB.Name := 'NotificacaoB';
    notificacaoB.Title := 'Aten��o: voc� tem uma nova mensagem';
    notificacaoB.AlertBody := edMensagem.Text;
    NotificationCenter1.PresentNotification(notificacaoB);
  finally
    notificacaoB.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  NotificationCenter1.CancelAll;
end;

procedure TForm1.NotificationCenter1ReceiveLocalNotification(Sender: TObject;
  ANotification: TNotification);
begin
  lbMensagens.Items.Add('Notifica��o recebida: ' + ANotification.Name);
end;

end.
