unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Edit, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Effects;

type
  TForm1 = class(TForm)
    Image1: TImage;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    ShadowEffect1: TShadowEffect;
    GlowEffect1: TGlowEffect;
    ReflectionEffect1: TReflectionEffect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
