unit uAmplitude;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmAT = class(TForm)
    gpbAT: TGroupBox;
    imgAT: TImage;
    edtVL: TEdit;
    ltbValores: TListBox;
    Label1: TLabel;
    ltbVlOrdenado: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    lblAT: TLabel;
    lblResult: TLabel;
    procedure edtVLKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAT: TfrmAT;
  valores : array of real;
  cont : integer;
implementation

{$R *.dfm}

procedure TfrmAT.edtVLKeyPress(Sender: TObject; var Key: Char);
begin
  //função para quando precionar a tecla enter adicionar o valor do edit ao vetor e
  //ao listbox.
  if not (Key in ['0'..'9',',','.','-',#8,#13]) then
    Key:= #0;
   if (Key = #13) and (edtVL.Text <> '') then
    begin
      SetLength(valores, cont+ 1);
      valores[cont]:= StrToFloat(edtVl.Text);
      //aumento o contador conforme for adicionado os valores.
      cont:= cont+ 1;
      ltbValores.Items.Add (edtVl.Text);
      {ltbValores.Items.Add (edtValorInf.Text);}
      edtVl.Text := '';
      Key:= #0;
end;
end;

procedure TfrmAT.FormActivate(Sender: TObject);
begin
  ltbValores.Clear;
  ltbVlOrdenado.Clear;
  SetLength(valores,0);
  cont:= 0;
  lblAT.Visible:= False;
  lblResult.Caption:= '';
end;

procedure TfrmAT.SpeedButton1Click(Sender: TObject);
begin
  ltbValores.Clear;
  ltbVlOrdenado.Clear;
  SetLength(valores,0);
  cont:= 0;
  lblAT.Visible:= False;
  lblResult.Caption:= '';
end;

procedure TfrmAT.SpeedButton2Click(Sender: TObject);
var
  x, at : real;
  i, j : integer;
begin

  for i:= Low(Valores) to (High(Valores)-1) do
   begin
    for j:= (i+1) to (High(Valores)) do
      begin
        if Valores[i] > Valores[j] then
          begin
            x:= valores[i];
            valores[i] := valores[j];
            valores[j] := x;
          end;

      end;
   end;

  for i:= Low(valores) to High(valores) do
    ltbVlOrdenado.Items.Add (FloatToStr(valores[i]));

  at:= (valores[High(valores)] - (valores[Low(valores)])) ;
  lblAT.Visible := True;
  lblResult.Caption := FloatToStr(at);

end;

procedure TfrmAT.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
