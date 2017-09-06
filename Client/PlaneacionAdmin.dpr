program PlaneacionAdmin;

uses
  Vcl.Forms,
  MidasLib,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmCatalogoBase in 'Compartidos\ufrmCatalogoBase.pas' {frmCatalogoBase},
  ufrmUnidadesRegionales in 'Catalogos\ufrmUnidadesRegionales.pas' {frmUnidadesRegionales},
  ufrmPlanes in 'Catalogos\ufrmPlanes.pas' {frmPlanes},
  ufrmModalidades in 'Catalogos\ufrmModalidades.pas' {frmModalidades},
  ufrmCiclosEscolares in 'Catalogos\ufrmCiclosEscolares.pas' {frmCiclosEscolares},
  ufrmComponentesCurriculares in 'Catalogos\ufrmComponentesCurriculares.pas' {frmComponentesCurriculares},
  ufrmAreasCurriculares in 'Catalogos\ufrmAreasCurriculares.pas' {frmAreasCurriculares},
  ufrmEmpleados in 'Catalogos\ufrmEmpleados.pas' {frmEmpleados},
  ufrmPlaneacionesClases in 'Operaciones\ufrmPlaneacionesClases.pas' {frmPlaneacionesClases},
  ufrmInstrumentosEvaluacion in 'Catalogos\ufrmInstrumentosEvaluacion.pas' {frmInstrumentosEvaluacion},
  ufrmSeleccion in 'Compartidos\ufrmSeleccion.pas' {frmSeleccion};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMain, frmMain);
  if Screen.MonitorCount > 1 then
    frmMain.Left := Screen.Monitors[1].Left;
  Application.Run;
end.
