unit uCoeficienteVariacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TfrmCV = class(TForm)
    imgCV: TImage;
    gpbCV: TGroupBox;
    lblInfo: TLabel;
    ltbVl: TListBox;
    edtVl: TEdit;
    lblMedia: TLabel;
    lblDP: TLabel;
    lblCV: TLabel;
    lblMediatxt: TLabel;
    lblDPtxt: TLabel;
    lblCVtxt: TLabel;
    btnClear: TSpeedButton;
    btnCalc: TSpeedButton;
    btnClose: TSpeedButton;
    lblResultado: TLabel;
    procedure edtVlKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCV: TfrmCV;
  valores : array of real;
  cont: integer;
implementation

{$R *.dfm}

procedure TfrmCV.btnCalcClick(Sender: TObject);
var
  //Declarando as variaves que irei usar, ou não
  media, dp, ds, soma, x, y, z, cv : real;
  i : integer;
begin
  //Zerando as variaves para não ter problemas nos calculos, e como teve
  x:= 0;
  y:= 0;
  z:= 0;
  media:= 0;
  dp:= 0;
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
   lblMediatxt.Caption:= FormatFloat('#0.00',media);

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

  //tirar 1 do contator por que estava dando pau no calculo
  cont:= cont-1;
  //realizar a divisão da somatoria pelo tamanho do vetro
  dp:= (ds / cont);
  //realizando a raiz quadrado do valor final
  dp:= sqrt(dp);
  //atribuindo o valor final a uma label para ser exibida em tela
  lblDPtxt.Caption:= FormatFloat('#0.00',dp);

  //calcular o C.V
  cv:= ((dp/media)*100);
  lblCVtxt.Caption:= (FormatFloat('#0.00',cv)+'%');

  if (cv <= 15) then
   lblResultado.Caption := ('C.V de ' +(FormatFloat('#0.00',cv)+'% ')+ 'Portando é Baixa Dispersão');
  if (cv > 15) and (cv <= 30) then
   lblResultado.Caption := ('C.V de ' +(FormatFloat('#0.00',cv)+'% ')+ 'Portando é Média Dispersão');
  if (cv > 30) then
  lblResultado.Caption := ('C.V de ' +(FormatFloat('#0.00',cv)+'% ')+ 'Portando é Alta Dispersão');

 end;
end;


procedure TfrmCV.btnClearClick(Sender: TObject);
begin
   //zerando todos os valores dos componentes para realizar novo calculo.
  ltbVl.Clear;
  edtVl.Text:= '';
  lblMediatxt.Caption := '';
  lblDPtxt.Caption := '';
  lblCVtxt.Caption := '';
  lblResultado.Caption := '';
  SetLength(valores, 0);
  cont:= 0;
end;

procedure TfrmCV.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCV.edtVlKeyPress(Sender: TObject; var Key: Char);
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
      {ltbValores.Items.Add (edtValorInf.Text);}
      edtVl.Text := '';
      Key:= #0;
    end;

end;
procedure TfrmCV.FormActivate(Sender: TObject);
begin
  //zerando todos os valores dos componentes para realizar novo calculo.
  ltbVl.Clear;
  edtVl.Text:= '';
  lblMediatxt.Caption := '';
  lblDPtxt.Caption := '';
  lblCVtxt.Caption := '';
  lblResultado.Caption := '';
  SetLength(valores, 0);
  cont:= 0;
end;

end.
