unit uMediana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TforMediana = class(TForm)
    edtValores: TEdit;
    ltbValores: TListBox;
    edtMediana: TEdit;
    labMediana: TLabel;
    ltbOrdenada: TListBox;
    labValoresAdd: TLabel;
    panelTexto: TPanel;
    labTitulo: TLabel;
    lblTexto: TLabel;
    Image1: TImage;
    labValoresOrd: TLabel;
    labValores: TLabel;
    Calcular: TSpeedButton;
    spbFechar: TSpeedButton;
    spbLimpar: TSpeedButton;
    spbAdicionar: TSpeedButton;
    actList: TActionList;
    actAdicionar: TAction;
    actCalcular: TAction;
    actLimpar: TAction;
    actFechar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forMediana: TforMediana;
  cont : integer;             //variaveis globais do formMediana
  valores: array of real;

implementation

{$R *.dfm}

procedure TforMediana.actAdicionarExecute(Sender: TObject);
begin
   if edtValores.Text = '' then  //erro quando num tem valor no campo e clicar para adicionar
  begin
  Application.MessageBox('Informe valor para adicionar','Por favor',MB_ICONEXCLAMATION+MB_OK);
  end
  else
  begin
  SetLength(valores, cont+1); //informando a variavel valores e cont
  valores[Cont]:= StrToFloat(edtValores.Text); //adicionando o conteudo de edtValores.Text a variavel  array valores
  edtValores.clear;
  ltbValores.Items.Add('Valor ' + floattostr(cont+1) + ' = ' + floatToStr(valores[cont])); //adiciona valores no listBox valores
  Cont:= Cont + 1;    //aumenta o contador
  end;
end;

procedure TforMediana.actCalcularExecute(Sender: TObject);
var
mediana1,mediana2,atual,proximo: integer;  //variaveis para calculo da mediana
posMediana1,posMediana2,temp: real;
begin
ltbOrdenada.Clear;
  if cont < 1 then   //erro quando for calcular sem adicionar valores
  begin
     Application.MessageBox('Adicione dados para obter a mediana ','Por favor',MB_ICONEXCLAMATION+MB_OK);
  exit;
  end;
     for atual := Low(valores) to (High(valores)-1) do  //colocar os valores em ordem crescente com 2 for
      begin
          for proximo := atual+1 to High(valores) do
          begin
               if valores[atual] > valores[proximo] then //condição para que se troque valor de posição
               begin
                    temp:= valores[atual];  //coloca valor atual em uma variavel temporaria
                    valores[atual]:= valores[proximo]; //atribui o valor da proxima para a atual
                    valores[proximo]:= temp; //atribui o valor da variavel temporaria a proxima
               end;
          end;
      end;
  for atual := Low(valores) to High(valores) do //um for para varrer quantidade de numeros adicionados
  begin
    ltbOrdenada.Items.Add('Valor ' + floattostr(atual+1) + ' = ' + FloatToStr(valores[atual]));  //adiciona valores no listBox ordenados
  end;
if (cont mod 2 <> 0) and (cont > 1) then  //condição para calcular mediana quando o numero de valores é impar
  begin
        posMediana1:= atual/2; //calcula o numero da posição da mediana
        mediana1:= trunc(posMediana1); //transforma o numero da posição de real para inteiro
        edtMediana.Text:= FloatToStr((valores[mediana1])); // coloca o valor da mediana no edtMediana.Text
  end
  else if cont mod 2 = 0 then   //condição para calcular mediana quando numero de valores é par
  begin
        posMediana1:= ((atual-1)/2); //calcular a posição 1 da mediana
        posMediana2:= (((atual-1)/2)+1); //calcular a posição 2 da mediana
        mediana1:= trunc(posMediana1); //transforma o numero da posição 1 de real para inteiro
        mediana2:= trunc(posMediana2);  //transforma o numero da posição 2 de real para inteiro
        edtMediana.Text:= FloatToStr((valores[mediana1]+ valores[mediana2])/2);// coloca o valor da mediana no edtMediana.Text
  end;
end;

procedure TforMediana.actFecharExecute(Sender: TObject);
begin
edtValores.Text:='';   // limpar os dados quando fechar o formMediana
edtMediana.Text:='';
cont:=0;
edtValores.Clear;
ltbValores.Clear;
ltbOrdenada.Clear;
close;           //fechar o showModal da formMediana
end;

procedure TforMediana.actLimparExecute(Sender: TObject);
begin
edtValores.Text:=''; //limpando todos os dados de formMediana para iniciar novo calculo com novos valores
edtMediana.Text:='';
cont:=0;
edtValores.Clear;
ltbValores.Clear;
ltbOrdenada.Clear;
end;

procedure TforMediana.FormCreate(Sender: TObject);
begin
lblTexto.Caption:=                 //ao criar o formMediana, exibir esse texto no lblTexto.caption dentro do panelTexto
'Para calcular a mediana'+ #13 +
'devemos, em primeiro lugar,'+ #13 +
'ordenar os dados do menor'+ #13 +
'para o maior valor. Se o'+ #13 +
'número de observações for'+ #13 +
'ímpar, a mediana será a'+ #13 +
'observação central. Se o '+ #13 +
'número de observações for '+ #13 +
'par, a mediana será a '+ #13 +
'média aritmética das duas'+ #13 +
'observações centrais.'+ #13 +
'Notação:';
end;

end.
