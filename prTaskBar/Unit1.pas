unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Menus,
  System.Win.TaskbarCore, Vcl.Taskbar, Vcl.StdActns;

type
  TForm1 = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    ImageList1: TImageList;
    Taskbar1: TTaskbar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  ShowMessage('Exemplo Task Bar');
end;

end.
