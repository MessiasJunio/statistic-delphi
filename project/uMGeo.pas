unit uMGeo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TforMediaGeo = class(TForm)
    edValor: TEdit;
    edMGeo: TEdit;
    labValor: TLabel;
    labMediaGeo: TLabel;
    lbValor: TListBox;
    labValoresAdd: TLabel;
    acGeo: TActionList;
    speedCalcular: TSpeedButton;
    speedLimpar: TSpeedButton;
    speedFechar: TSpeedButton;
    ptexto: TPanel;
    lbtexto: TLabel;
    actCalcular: TAction;
    actLimpa: TAction;
    actFechar: TAction;
    SpeedButton4: TSpeedButton;
    actAdicionar: TAction;
    imgFundo: TImage;
    imgFormulas: TImage;
    procedure actAdicionarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actLimpaExecute(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forMediaGeo: TforMediaGeo;
  geo: array of real;
  cont: integer;

implementation

{$R *.dfm}

procedure TforMediaGeo.actAdicionarExecute(Sender: TObject);
begin
if edvalor.Text = '' then
begin
  application.MessageBox('Adicione um valor','Atenção',mb_iconexclamation+mb_ok);
  exit;
end;
 setlength(geo,cont+1);
 geo[cont]:= strtofloat(edValor.Text);
 edValor.Clear;
 lbValor.items.add(floattostr(geo[cont]));
 cont:= cont+1;
end;

procedure TforMediaGeo.actCalcularExecute(Sender: TObject);
var
mgeo, pvalor: real;
contf:integer;
begin
if cont<1 then
begin
  application.MessageBox('Não tem valor para ser calculado','Atenção',mb_iconexclamation+mb_ok);
  exit;
  end;
  pvalor:=1;
  for contf := Low(geo) to High(geo) do
    begin
      pvalor:= pvalor*geo[contf];
    end;
    mgeo:= exp(1/(cont)*ln(pvalor));
    edMGeo.text:= formatFloat('#0.00',mgeo);
end;

procedure TforMediaGeo.actFecharExecute(Sender: TObject);
begin
Close;
end;

procedure TforMediaGeo.actLimpaExecute(Sender: TObject);
begin
edValor.Clear;
edMGeo.Clear;
lbValor.clear;
cont:= 0;
end;

procedure TforMediaGeo.FormCreate(Sender: TObject);
begin
lbtexto.Caption:=
'A média geométrica é'+#13+
'uma proporção contínua'+#13+
'de um conjunto de n'+#13+
'número a1, a2, a3, ... ,'+#13+
'an e a raiz de ordem n'+#13+
'do produto desses números.'+#13+
'De notação:';
end;

end.
