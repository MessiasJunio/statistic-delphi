unit uMediaPonderada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TforMediaPon = class(TForm)
    labIntroducao: TLabel;
    labExeCalculo: TLabel;
    labDivisaoExe: TLabel;
    labDivisao: TLabel;
    labExeResultado: TLabel;
    labMulPesos: TLabel;
    labMP: TLabel;
    Bevel1: TBevel;
    ediPrimeiroValor: TEdit;
    lab1X: TLabel;
    ediPrimeiroPeso: TEdit;
    lab1Soma: TLabel;
    ediSegundoValor: TEdit;
    lab2X: TLabel;
    ediSegundoPeso: TEdit;
    lab2Soma: TLabel;
    ediTerceiroValor: TEdit;
    lab3X: TLabel;
    ediTerceiroPeso: TEdit;
    lab1Parentese: TLabel;
    lab3Parentese: TLabel;
    lab2Parentese: TLabel;
    lab4Parentese: TLabel;
    lab5Parentese: TLabel;
    lab6Parentese: TLabel;
    labSomaPesos: TLabel;
    labPrimeiroProduto: TLabel;
    labSegundoProduto: TLabel;
    labTerceiroProduto: TLabel;
    labResultado: TLabel;
    butCalcular: TButton;
    butAdicionar: TButton;
    butLimpar: TButton;
    listaNumeros: TListBox;
    listaPesos: TListBox;
    labValores: TLabel;
    labPesos: TLabel;
    procedure butCalcularClick(Sender: TObject);
    procedure butAdicionarClick(Sender: TObject);
    procedure butCalculorNovamenteClick(Sender: TObject);
    procedure butLimparClick(Sender: TObject);


  private

    { Private declarations }
  public
    { Public declarations }
 procedure CalcularMediaPonterada;

 end;

var
  forMediaPon: TforMediaPon;

  //variaveis media ponderado




implementation

{$R *.dfm}


procedure TforMediaPon.butAdicionarClick(Sender: TObject);
begin

 //Ao precionar batao adicionar deixa todos campos vazios
    ediPrimeiroValor.Text := '';
    ediSegundoValor.text := '';
    ediTerceiroValor.Text := '';

    ediPrimeiroPeso.text := '';
    ediSegundoPeso.Text := '';
    ediTerceiroPeso.Text := '';


    labPrimeiroProduto.caption := '';
    labSegundoProduto.Caption :='';
    labTerceiroProduto.Caption := '';



end;

procedure TforMediaPon.butCalcularClick(Sender: TObject);



{valores seram atribuidos zeros para que o resultados que não sejam
  marcados no edit o recebam esses valores}
begin

        CalcularMediaPonterada;


end;


procedure TforMediaPon.butCalculorNovamenteClick(Sender: TObject);
var
primeiroValor2 : real;
primeiroPeso2 : real;
segundoValor2 : real;
segundoPeso2 : real;
terceiroValor2 : real;
terceiroPeso2: real;
resultado2 :real;
begin

    CalcularMediaPonterada;

end;

 // botao limpar
procedure TforMediaPon.butLimparClick(Sender: TObject);

begin
    ediPrimeiroValor.Text := '';
    ediSegundoValor.text := '';
    ediTerceiroValor.Text := '';

    ediPrimeiroPeso.text := '';
    ediSegundoPeso.Text := '';
    ediTerceiroPeso.Text := '';

    listaNumeros.Clear;
    listaPesos.Clear;


    labPrimeiroProduto.caption := '?';
    labSegundoProduto.Caption :='?';
    labTerceiroProduto.Caption := '?';
    labSomaPesos.Caption := '........';
    labResultado.Caption := 'Resultado';

end;


//metodo que realizara os calculos
procedure TforMediaPon.CalcularMediaPonterada;
var

primeiroValor : real;
primeiroPeso : real;
segundoValor : real;
segundoPeso : real;
terceiroValor : real;
terceiroPeso : real;
resultado : real;

contar : integer;
calculoPrimeiro,calculoSegundo,calculoTerceiro,CalculoFinal : real;

somaPesos,somaPesosFinal: real;
begin
primeiroValor := 0;
primeiroPeso := 0;
segundoValor := 0;
segundoPeso := 0;
terceiroValor := 0;
terceiroPeso := 0;


// se o usuario não preencher os campos sera atribuidos zero nos valores
   if ediPrimeiroValor.text= '' then
begin
   ediPrimeiroValor.text:= '0';
end;

  if ediSegundoValor.Text = '' then
  begin
    ediSegundoValor.text := '0';
  end;

  if ediTerceiroValor.Text = '' then
  begin
   ediTerceiroValor.Text := '0';
  end;

  // Mesma coisa dos valores se que com os pesos
  if ediPrimeiroPeso.text = '' then
  begin
       ediPrimeiroPeso.text := '0';
  end;

  if   ediSegundoPeso.Text = '' then
  begin
        ediSegundoPeso.Text := '0';
  end;

  if ediTerceiroPeso.Text = '' then
  begin
      ediTerceiroPeso.Text := '0';
  end;




primeiroValor := StrtoFloat(ediPrimeiroValor.Text);
PrimeiroPeso := StrtoFloat(ediPrimeiroPeso.text);

segundoValor := StrToFloat(ediSegundoValor.Text);
segundoPeso  := StrToFloat(ediSegundoPeso.Text);

terceiroValor := StrToFloat(ediTerceiroValor.Text);
terceiroPeso := StrToFloat(ediTerceiroPeso.Text);





resultado := ((primeiroValor * primeiroPeso)+ (segundoValor * segundoPeso)+
             (terceiroValor * terceiroPeso))/ (primeiroPeso + segundoPeso + terceiroPeso);
if resultado = 0 then
begin
  showMessage('Resultado 0');
end;
     //calculando valores os pesos que iram aperecer na label que divide os
     //numeros do edit
 somaPesos := primeiroPeso + segundoPeso + terceiroPeso;

 //calculando os valores de cada edit
 calculoPrimeiro := (primeiroValor * primeiroPeso);
 calculoSegundo := ( segundoValor * segundoPeso);
 calculoTerceiro := (terceiroValor *  terceiroPeso);

//Acrescentando cada valor a sua label que e as que aparecem depois
//de precionar o botão calcular
labPrimeiroProduto.caption := floatToStr( calculoPrimeiro);
labSegundoProduto.Caption := floatToStr( calculoSegundo);
labTerceiroProduto.Caption := floatToStr (calculoTerceiro);

//Adicona os valores no listBos dos valores
listaNumeros.Items.add(floatTOStr(calculoPrimeiro));
listaNumeros.Items.add(floatTOStr(calculoSegundo));
listaNumeros.Items.add(floatTOStr(calculoTerceiro));

//Adiciona valores dos pesos
listaPesos.Items.Add(floatTOStr(somaPesos));

  //for responsavel pela soma dos pesos, o mesmo guarda tambem os valores
  //para quando o usurio quiser acresentar mais
 for contar := 0 to listaPesos.Items.Count -1 do
begin

   somaPesosFinal:= somaPesosFinal + strTOFloat(listaPesos.Items[contar]);

end;

// for responsavel pelo cálculo final
for contar := 0 to listaNumeros.Items.Count -1 do
begin

calculoFinal := calculoFinal + (strToFloat(listaNumeros.Items[contar])) / somaPesosFinal;

end;
labSomaPesos.Caption := floatToStr(somaPesosFinal);
labResultado.Caption := FormatFloat('Resultado: ' + '0.00',calculoFinal);

end;

end.
