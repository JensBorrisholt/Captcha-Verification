unit MainU;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, CaptchaVerification,
  Vcl.StdCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    Image1: TImage;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    CaptchaVerification: TCaptchaVerification;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(CaptchaVerification.Validate(LabeledEdit1.Text, False).ToString(TUseBoolStrs.True));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CaptchaVerification := TCaptchaVerification.Create(Self);
  Image1.Picture.Assign(CaptchaVerification.Image);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  CaptchaVerification.RefreshBitmap;
  Image1.Picture.Assign(CaptchaVerification.Image);
end;

end.
