unit uMediaAritmetica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TforMediaAri = class(TForm)
    labTitulo: TLabel;
    labIntroducao: TLabel;
    labEx: TLabel;
    labSomaExe: TLabel;
    labLinhaDivExe: TLabel;
    labDivisao: TLabel;
    labResultadoSoma: TLabel;
    labDivResulEXe: TLabel;
    labDivideResulSoma: TLabel;
    labResultadoExe: TLabel;
    labMA: TLabel;
    mainMenu: TMainMenu;
    calculadora1: TMenuItem;
    labSomaEventos: TLabel;
    labLinhaExe: TLabel;
    labNumeroEventos: TLabel;
    labSinalResul: TLabel;
    labResultado: TLabel;
    LabInformacao: TLabel;
    ImaSetaCalculadora: TImage;
    procedure calculadora1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forMediaAri: TforMediaAri;

implementation

{$R *.dfm}

uses uCalculadora;



procedure TforMediaAri.calculadora1Click(Sender: TObject);
begin
   forCalculadora.Show;
   imaSetaCalculadora.visible:=False;
   labInformacao.visible := false;
end;

end.
