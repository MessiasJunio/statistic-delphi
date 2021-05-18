program APSCalculosEstatisticos;

uses
  Vcl.Forms,
  uAPS in 'uAPS.pas' {ForPrincipal},
  uMediaAritmetica in 'uMediaAritmetica.pas' {forMediaAri},
  uCalculadora in 'uCalculadora.pas' {forCalculadora},
  uMediaPonderada in 'uMediaPonderada.pas' {forMediaPon},
  uMediana in 'uMediana.pas' {forMediana},
  uAmplitude in 'uAmplitude.pas' {frmAT},
  uCoeficienteVariacao in 'uCoeficienteVariacao.pas' {frmCV},
  uVariancia in 'uVariancia.pas' {frmVariancia},
  uMGeo in 'uMGeo.pas' {forMediaGeo},
  uMediaHarmonica in 'uMediaHarmonica.pas' {forMediaHar},
  uDesvioPad in 'uDesvioPad.pas' {ForDesvioPad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Caramba!!!!';
  Application.CreateForm(TForPrincipal, ForPrincipal);
  Application.CreateForm(TforMediaAri, forMediaAri);
  Application.CreateForm(TforCalculadora, forCalculadora);
  Application.Run;
end.
