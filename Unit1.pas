unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtDlgs,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tabConsulta: TTabSheet;
    TabCadastros: TTabSheet;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBImage1: TDBImage;
    DBGrid1: TDBGrid;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button2: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, System.hash;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    if not(DataModule2.FDQuery1.State in dsEditModes) then
    begin
      DataModule2.FDQuery1.Edit;
    end;
    DataModule2.FDQuery1foto.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  novasenha: string;
begin
  if Form3.ShowModal = mrOK then
  begin
    novasenha := THashSHA2.GetHashString(Form3.edSenha.Text);
    if not(DataModule2.FDQuery1.State in dsEditModes) then
    begin
      DataModule2.FDQuery1.Edit
    end;
    DataModule2.FDQuery1senha.AsString := novasenha;
  end;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabCadastros;
end;

end.
