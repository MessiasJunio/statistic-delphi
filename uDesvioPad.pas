unit uDesvioPad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.GIFImg;

type
  TForDesvioPad = class(TForm)
    Label1: TLabel;
    LabValores: TLabel;
    LabValoresAdicionados: TLabel;
    labMedia: TLabel;
    LabDesvioPadrao: TLabel;
    editValores: TEdit;
    listValores: TListBox;
    btnCalcular: TButton;
    BtnLimpar: TButton;
    editMedia: TEdit;
    Listsoma: TListBox;
    Image4: TImage;
    labSomarMedia: TLabel;
    Label7: TLabel;
    labSomaValores: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Label2: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure editValoresKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForDesvioPad: TForDesvioPad;
  media : real;
   contador : integer;
   valores : real;

implementation

{$R *.dfm}




procedure TForDesvioPad.BtnLimparClick(Sender: TObject);
begin
editValores.Clear;
editMedia.Clear;
listValores.Clear;
listSoma.Clear;
LabDesvioPadrao.Caption := '?';
labSomarMedia.Caption := 'X';
labSomaValores.Caption := '(n-1)';
end;


procedure TForDesvioPad.editValoresKeyPress(Sender: TObject; var Key: Char);
var

SomaValores : real;
desvio : real;



begin
if not (Key in ['0'..'9',',','.','-',#8,#13]) then
    Key:= #0;
   if (Key = #13) and (editValores.Text <> '') then
    begin


somaValores := 0;
media := 0;


valores := strToFloat(editValores.Text);
  editValores.Text := '';

listValores.items.add(floatToStr(valores));

for contador := 0 to listValores.Items.Count - 1 do
begin
   somaValores := somaValores + strToFloat(listValores.Items[contador]);

end;

    media := (somavalores / contador);

     editMedia.Text := FormatFloat('0.00',media);
     Key:= #0;
    end;

end;

procedure TForDesvioPad.btnCalcularClick(Sender: TObject);
var
desvioValores : real;
desvio, desvioCalculo : real;

desvioDivisaoValores: real;
somaDesvioValores : real;

desvioPadrao : real;

begin
desvioValores := 0;

  for contador := 0 to listValores.Items.Count - 1 do
    begin
      desvioValores :=  strToFloat(listValores.Items[contador]) ;
      desvio := desvioValores - media;

      listSoma.items.Add(floatToStr(desvio * desvio));
    end;


      for contador := 0 to listSoma.items.Count - 1 do
        begin
           somaDesvioValores := somaDesvioValores + strToFloat(listSoma.items[contador])
        end;
           labSomarMedia.Caption := formatfloat('0.00',somaDesvioValores);
           labSomaValores.Caption :=  inttoStr(contador-1);
         desvioDivisaoValores :=  somaDesvioValores / (contador-1);


         desvioPadrao := sqrt(desvioDivisaoValores);
        LabDesvioPadrao.Caption := formatFloat('0.00',desvioPadrao);






end;


end.
