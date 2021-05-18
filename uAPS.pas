unit uAPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Menus, System.Actions, Vcl.ActnList;

type
  TForPrincipal = class(TForm)
    PanelCalculadora: TPanel;
    labMTC: TLabel;
    labMD: TLabel;
    bevelSeparador: TBevel;
    butCalcularMTC: TButton;
    GrBMTC: TGroupBox;
    radMediaAri: TRadioButton;
    radMediaGeo: TRadioButton;
    radMediaHar: TRadioButton;
    RadMediaPon: TRadioButton;
    radMediana: TRadioButton;
    GrBMD: TGroupBox;
    RadVariancia: TRadioButton;
    radDesvioPadrao: TRadioButton;
    radAmplitude: TRadioButton;
    radCoeficienteVar: TRadioButton;
    butCalcularMD: TButton;
    BevelSomatorio: TBevel;
    LabSomatorioImagem: TImage;
    LabSomatorio: TLabel;
    actMedidas: TActionList;
    menuEstatisca: TMainMenu;
    Medidasdetendnciacentral1: TMenuItem;
    MedidasTC1: TMenuItem;
    MedidasD1: TMenuItem;
    MdiaAritmtica1: TMenuItem;
    Mdia1: TMenuItem;
    MdiaHarmnica1: TMenuItem;
    MdiaPonderada1: TMenuItem;
    Mediana1: TMenuItem;
    Varincia1: TMenuItem;
    DesvioPadro1: TMenuItem;
    Amplitude1: TMenuItem;
    Coeficientedevario1: TMenuItem;
    actCalculadora: TAction;
    actMediaAri: TAction;
    actVariancia: TAction;
    actMediaGeo: TAction;
    actMediaPon: TAction;
    actMediaHar: TAction;
    actMediana: TAction;
    actDP: TAction;
    actAmp: TAction;
    actCV: TAction;
    Calculadora1: TMenuItem;
    procedure butCalcularMTCClick(Sender: TObject);
    procedure butCalcularMDClick(Sender: TObject);
    procedure actMediaAriExecute(Sender: TObject);
    procedure actMediaGeoExecute(Sender: TObject);
    procedure actMediaHarExecute(Sender: TObject);
    procedure actMediaPonExecute(Sender: TObject);
    procedure actMedianaExecute(Sender: TObject);
    procedure actVarianciaExecute(Sender: TObject);
    procedure actAmpExecute(Sender: TObject);
    procedure actCVExecute(Sender: TObject);
    procedure actCalculadoraExecute(Sender: TObject);
    procedure actDPExecute(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForPrincipal: TForPrincipal;

implementation

{$R *.dfm}

uses uMediaAritmetica, uMediaPonderada, uMediana, uMGeo, uMediaHarmonica,
  uDesvioPad, uAmplitude, uCoeficienteVariacao, uVariancia, uCalculadora;

procedure TForPrincipal.butCalcularMTCClick(Sender: TObject);
begin

    //Media aritmetica checked
  if radMediaAri.Checked then
  begin

   forMediaAri.ShowModal;

  end
       //Media ponderada checked
  else if radMediaPon.Checked then
  begin
  try
      forMediaPon := TforMediaPon.Create(self);
      forMediaPon.showModal;
  finally
    FreeAndNil(forMediaAri);
  end;
  end
        //Mediana checked
  else if radMediana.Checked then
  begin
  try
       forMediana := TforMediana.Create(self);
       forMediana.showModal;
  finally
    FreeAndNil(forMediana);
  end;
  end

  //Media geometrica checked
  else if radMediaGeo.Checked then
  begin
  try
       forMediaGeo := TforMediaGeo.Create(self);
       forMediaGeo.showModal;
  finally
    FreeAndNil(forMediaGeo);
  end;
  end

  // Media harmônica checked
   else if radMediaHar.Checked then
       try
       forMediaHar := TforMediaHar.Create(self);
       forMediaHar.ShowModal;
       finally
         FreeAndNil(forMediaHar);
       end;

end;

procedure TForPrincipal.butCalcularMDClick(Sender: TObject);
begin
         //Desvio Padrão checked
        if radDesvioPadrao.checked then
         begin

              try
              forDesvioPad:= TforDesvioPad.Create(self);
                 forDesvioPad.ShowModal;
              finally
                FreeAndNil(forDesvioPad);
              end;


          end

         //Amplitude Total checked
        else if radAmplitude.Checked then
        begin
        try
         frmAT  := TfrmAT.Create(self);
         frmAT.showModal;
        finally
          FreeAndNil(frmAt);
        end;
        end

         // Coefiente de variação checked
         else if radCoeficientevar.checked then
         begin
         try
          frmCV := TfrmCV.Create(self);
          frmCV.ShowModal;
         finally
          FreeAndNil(frmCV);
         end;
         end

         //Variância checked
         else if radVariancia.checked then
         try
         frmVariancia := TfrmVariancia.Create(self);
         frmVariancia.showModal;
         finally
          FreeAndNil(frmVariancia);
         end;

end;





procedure TForPrincipal.actAmpExecute(Sender: TObject);
begin
   try
         frmAT  := TfrmAT.Create(self);
         frmAT.showModal;
        finally
          FreeAndNil(frmAt);
        end;
end;

procedure TForPrincipal.actCalculadoraExecute(Sender: TObject);
begin

forCalculadora.ShowModal;


end;

procedure TForPrincipal.actCVExecute(Sender: TObject);
begin
try
frmCV := TfrmCV.Create(self);
frmCV.ShowModal;
finally
  FreeAndNil(frmCV);
end;
end;

procedure TForPrincipal.actDPExecute(Sender: TObject);
begin
     try
       ForDesvioPad := TForDesvioPad.Create(self);
       ForDesvioPad.ShowModal;
     finally
       FreeAndNil(ForDesvioPad);
     end;
end;

procedure TForPrincipal.actMediaAriExecute(Sender: TObject);
begin

forMediaAri.ShowModal;

end;

procedure TForPrincipal.actMediaGeoExecute(Sender: TObject);
begin
 try
    forMediaGeo := TforMediaGeo.Create(self);
    forMediaGeo.showModal;
  finally
    FreeAndNil(forMediaGeo);
  end;
end;

procedure TForPrincipal.actMediaHarExecute(Sender: TObject);
begin
   try
       forMediaHar := TforMediaHar.Create(self);
       forMediaHar.ShowModal;
       finally
         FreeAndNil(forMediaHar);
       end;
end;

procedure TForPrincipal.actMedianaExecute(Sender: TObject);
begin
  try
       forMediana := TforMediana.Create(self);
       forMediana.showModal;
  finally
    FreeAndNil(forMediana);
  end;
end;

procedure TForPrincipal.actMediaPonExecute(Sender: TObject);
begin
  try
      forMediaPon := TforMediaPon.Create(self);
      forMediaPon.showModal;
  finally
    FreeAndNil(forMediaAri);
  end;
end;

procedure TForPrincipal.actVarianciaExecute(Sender: TObject);
begin
frmVariancia.ShowModal;
end;

end.






















