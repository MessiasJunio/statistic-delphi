unit uMediaHarmonica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TforMediaHar = class(TForm)
    labExemplo: TLabel;
    ImgFundo: TImage;
    imgExemplo: TImage;
    EdiValores: TEdit;
    memoValores: TMemo;
    ButAdicionarValores: TButton;
    labResultado: TLabel;
    butLimpar: TButton;
    procedure FormActivate(Sender: TObject);
    procedure EdiValoresDblClick(Sender: TObject);
    procedure ButAdicionarValoresClick(Sender: TObject);
    procedure butLimparClick(Sender: TObject);

  private
    { Private declarations }
   Procedure Exemplo;
  public
    { Public declarations }
  end;

var
  forMediaHar: TforMediaHar;

implementation

{$R *.dfm}

{ TforMediaHar }

procedure TforMediaHar.ButAdicionarValoresClick(Sender: TObject);
var
contador : integer;
valores,calculo: real;
resultado : real;

begin

for contador := 0 to memoValores.Lines.Count -1 do
begin
   valores := valores + (1/strToFloat(memoValores.Lines[contador]));

end;
calculo := (contador / valores);

labResultado.caption := formatFloat('Resultado: ' +'0.00', calculo);

end;

procedure TforMediaHar.butLimparClick(Sender: TObject);
begin
ediValores.text:='';
memoValores.lines.Text := '';
labResultado.Caption := 'Resultado';
end;

procedure TforMediaHar.EdiValoresDblClick(Sender: TObject);
begin
memoValores.Lines.Add(ediValores.text);
ediValores.Text := '';
end;


procedure TforMediaHar.Exemplo;
begin
labExemplo.Caption :=
' O media hamôrnica está  relacionada' +  #13 +
'ao calculo de grandezas inversamente' + #13 +
'Proporcionais exemplo : tempo e velocidade' + #13+
'Um carro que percorreu um determinada' + #13 +
'distância na primeira metada estava a 50km/h na' + #13+
'segunda metade com 60km/h qual é a velocidade média';
end;

procedure TforMediaHar.FormActivate(Sender: TObject);
begin
exemplo;
end;

end.
