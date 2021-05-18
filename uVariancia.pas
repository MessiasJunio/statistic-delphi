unit uVariancia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmVariancia = class(TForm)
    gpbVar: TGroupBox;
    imgVar: TImage;
    lvlVarInf: TLabel;
    edtVl: TEdit;
    ltbVl: TListBox;
    lblMedia: TLabel;
    lblMediaVl: TLabel;
    lblVar: TLabel;
    lblVarVl: TLabel;
    btnClear: TSpeedButton;
    btnCalc: TSpeedButton;
    btnClose: TSpeedButton;
    procedure edtVlKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVariancia: TfrmVariancia;
  valores : array of real;
  cont : integer;
implementation

{$R *.dfm}

procedure TfrmVariancia.btnCalcClick(Sender: TObject);
  var
  //Declarando as variaves que irei usar, ou não
  media, ds, s, soma, x, y, z : real;
  i : integer;
begin
  //Zerando as variaves para não ter problemas nos calculos, e como teve
  x:= 0;
  y:= 0;
  z:= 0;
  media:= 0;
  ds:= 0;
  soma:= 0;
  //verificar se existe valores informados para realizar os calculos
  if cont = 0 then
    Application.MessageBox('Informe os valores que deseja calcular','Alerta',MB_ICONHAND+MB_OK)
  else
  begin
  //iniciando primeira parte do calculo para achar a média
  for i := 0 to cont -1 do
   begin
    soma:= soma + (valores[i]);
   end;
   //realizando calcula da média
   media:= (soma / cont);
   //atribuindo o valor da média para uma label para ser exibido na tela
   lblMediaVl.Caption:= FormatFloat('#0.00',media);

  //primeira parte do calculo para achar o desvio padrão
  //pegar os valores do array e subtrair a média aritmetica
  //fazer o calculo elevando ao quadrado
  //fazer a somatoria dos valores resultando da potenciação
  for i := 0 to cont -1 do
   begin
    x:= valores[i];
    y:= (x - media);
    z:= (y * y);
    ds:= (ds + z);
   end;

  //realizar a divisão da somatoria pelo tamanho do vetro
   s:= (ds / cont);
     lblVarVl.Caption := FormatFloat('#0.00',s);
  end;

end;

procedure TfrmVariancia.btnClearClick(Sender: TObject);
begin
  cont:= 0;
  SetLength(valores,0);
  ltbVl.Clear;
  lblVarVl.Caption := '';
  lblMediaVl.Caption := '';
end;

procedure TfrmVariancia.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVariancia.edtVlKeyPress(Sender: TObject; var Key: Char);
begin
  //função para quando precionar a tecla enter adicionar o valor do edit ao vetor e
  //ao listbox.
  if not (Key in ['0'..'9',',','.','-',#8,#13]) then
    Key:= #0;
   if (Key = #13) and (edtVl.Text <> '') then
    begin
      SetLength(valores, cont+ 1);
      valores[cont]:= StrToFloat(edtVl.Text);
      //aumento o contador conforme for adicionado os valores.
      cont:= cont+ 1;
      ltbVl .Items.Add (edtVl.Text);
      edtVl.Text := '';
      Key:= #0;
    end;
end;

procedure TfrmVariancia.FormActivate(Sender: TObject);
begin
  cont:= 0;
  SetLength(valores,0);
  ltbVl.Clear;
  lblVarVl.Caption := '';
  lblMediaVl.Caption := '';
end;

end.
