unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    edSenha: TLabeledEdit;
    edConfirmarSenha: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  if (edSenha.Text = edConfirmarSenha.Text) and (edSenha.Text <> '') then
  begin
    ModalResult := mrOK;
  end
  else
  begin
    raise Exception.Create('A senha não confere');
  end;
end;

end.
