unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TforCalculadora = class(TForm)
    Bt5: TButton;
    Bt4: TButton;
    Bt6: TButton;
    BtSubtrair: TButton;
    bt7: TButton;
    Bt8: TButton;
    Bt9: TButton;
    BtMultiplicar: TButton;
    BtLimpar: TButton;
    Bt0: TButton;
    BtDividir: TButton;
    BtIgual: TButton;
    imgFundo: TImage;
    ediResultado: TEdit;
    but1: TButton;
    but3: TButton;
    butSomar: TButton;
    but5: TButton;
    but4: TButton;
    but6: TButton;
    butDiminuir: TButton;
    but7: TButton;
    but8: TButton;
    but9: TButton;
    but2: TButton;
    butMultiplicar: TButton;
    butLimpar: TButton;
    but0: TButton;
    butDividir: TButton;
    butVirgula: TButton;
    labOperador: TLabel;
    butResultado: TButton;


    procedure butDividirClick(Sender: TObject);
    procedure butMultiplicarClick(Sender: TObject);

    procedure butSomarClick(Sender: TObject);
    procedure butDiminuirClick(Sender: TObject);
    procedure imgFundoClick(Sender: TObject);
    procedure butResultadoClick(Sender: TObject);
    procedure butLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
    procedure calcular;
    procedure limpar;

  public
    { Public declarations }

  end;

var
  forCalculadora: TforCalculadora;

  operacao : char;
  total : real;
  ultimoNumero : real;
  numeroEventos : Integer;
  somaEventos: real;
  resultadoMedia : real;


  jogada : boolean;

implementation

{$R *.dfm}

uses uMediaAritmetica, uMediaPonderada;


 //Metodo ultilizado para fazer o caption dos botoes aparecerem no visor que é
 // ediResultado
procedure TforCalculadora.imgFundoClick(Sender: TObject);
begin

if ultimoNumero = 0 then
 begin
ediResultado.Text :=  TButton(sender).Caption;
 end
else

ediResultado.Text := ediResultado.Text + TButton(sender).Caption;

ultimoNumero := strTOFloat(ediResultado.Text);



end;

 //botaoLimpar
procedure TforCalculadora.limpar;
begin
ultimoNumero := 0;
ediResultado.Text := '0';
operacao := '+';
total := 0;
jogada := true;
labOperador.Caption := '';
forMediaAri.labResultado.caption := 'resultado';
forMediaAri.labSomaEventos.Caption :='?';
forMediaAri.labNumeroEventos.caption := '?';
numeroEventos :=0;

end;

procedure TforCalculadora.butSomarClick(Sender: TObject);
begin
ultimoNumero := strToFloat(ediResultado.Text);
calcular;
operacao := '+';
labOperador.Caption := '+';

 //média aritmetica while
   while labOperador.caption = '+' do
     begin
      numeroEventos :=  numeroEventos + 1;

     break;
        end;



end;


// butão operador de divisão
procedure TforCalculadora.butDiminuirClick(Sender: TObject);
begin
ultimoNumero := strToFloat(ediResultado.Text);
calcular;
operacao := '-';
labOperador.Caption := '-';
end;
  //botao dividir
procedure TforCalculadora.butDividirClick(Sender: TObject);
begin
ultimoNumero := strToFloat(ediResultado.Text);
calcular;
operacao := '/';
labOperador.Caption := '/';
end;

// botão Operador Multiplicação
procedure TforCalculadora.butMultiplicarClick(Sender: TObject);
begin
ultimoNumero := strToFloat(ediResultado.Text);
calcular;
operacao := '*';
labOperador.Caption := '*';
end;

            //botao limpar
     procedure TforCalculadora.butLimparClick(Sender: TObject);
begin
       limpar;

end;


  //botao igual
procedure TforCalculadora.butResultadoClick(Sender: TObject);
begin

calcular;

end;

//Operações onde seram feitos os calculos
procedure TforCalculadora.calcular;


begin



       case operacao of
       '+' : begin


        total := total + strToFloat(ediResultado.Text);
        forMediaAri.labSomaEventos.Caption := floatToStr(total);
        //responsavel por mostra os valores dinamicamento na media aritmetica

       forMediaAri.labNumeroEventos.caption := floattoStr (numeroEventos + total/total);
        forMediaAri.labResultado.Caption := floattoStr((total) / (numeroEventos + total/total));



       end;
       '-' : total := total - strToFloat(ediResultado.Text);
       '/' : total := total / strToFloat(ediResultado.Text);
       '*' : total := total * strToFloat(ediResultado.Text);
       end;
       ediResultado.text := floatToStr(total);
           ultimoNumero := 0;

end;


     //quando o form ativar

//Comandos do teclado
procedure TforCalculadora.FormActivate(Sender: TObject);
begin
    ShowMessage('Os calculos são realizados simultaneamente por favor não comece a operação ' +
            'ultlizando  o numero zero');
ultimoNumero := 0;
ediResultado.Text := '0';
operacao := '+';
total := 0;
labOperador.Caption := '';
forMediaAri.labResultado.caption := 'resultado';
forMediaAri.labSomaEventos.Caption :='?';
forMediaAri.labNumeroEventos.caption := '?';
numeroEventos :=0;
end;

procedure TforCalculadora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_NUMPAD1 then
    but1.Click;
  if Key = VK_NUMPAD2 then
    but2.click;
  if Key = VK_NUMPAD3 then
    but3.click;
  if Key = VK_NUMPAD4 then
    but4.click;
  if Key = VK_NUMPAD5 then
    but5.click;
  if Key = VK_NUMPAD6 then
    but6.click;
  if Key = VK_NUMPAD7 then
     but7.click;
  if Key = VK_NUMPAD8 then
    but8.click;
  if Key = VK_NUMPAD9 then
     but9.click;
  if Key = VK_NUMPAD0 then
     but0.click;
  if Key = VK_ADD then
     butSomar.click;
  if Key = VK_SUBTRACT then
    butDiminuir.click;
  if Key = VK_MULTIPLY then
    butMultiplicar.click;
  if Key = VK_DIVIDE then
     butDividir.click;
  if Key = VK_DECIMAL then
    butvirgula.Click;
  if Key = VK_RETURN then
    butResultado.click;
  if Key = VK_DELETE then
    butLimpar.click;
end;

end.






















