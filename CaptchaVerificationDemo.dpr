program CaptchaVerificationDemo;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {Form1},
  CaptchaVerification in 'CaptchaVerification.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
