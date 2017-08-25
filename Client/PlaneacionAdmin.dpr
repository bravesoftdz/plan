program PlaneacionAdmin;

uses
  Vcl.Forms,
  MidasLib,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmCatalogoBase in 'Compartidos\ufrmCatalogoBase.pas' {frmCatalogoBase},
  ufrmUnidadesAcademicas in 'Catalogos\ufrmUnidadesAcademicas.pas' {frmUnidadesAcademicas},
  ufrmPlanes in 'Catalogos\ufrmPlanes.pas' {frmPlanes},
  ufrmModalidades in 'Catalogos\ufrmModalidades.pas' {frmModalidades},
  ufrmCiclosEscolares in 'Catalogos\ufrmCiclosEscolares.pas' {frmCiclosEscolares},
  ufrmSecretariosAcademicos in 'Catalogos\ufrmSecretariosAcademicos.pas' {frmSecretariosAcademicos},
  ufrmComponentesCurriculares in 'Catalogos\ufrmComponentesCurriculares.pas' {frmComponentesCurriculares},
  ufrmAreasCurriculares in 'Catalogos\ufrmAreasCurriculares.pas' {frmAreasCurriculares},
  ufrmLineasDisciplinares in 'Catalogos\ufrmLineasDisciplinares.pas' {frmLineasDisciplinares},
  ufrmProfesores in 'Catalogos\ufrmProfesores.pas' {frmProfesores},
  ufrmPlaneacionesClases in 'Operaciones\ufrmPlaneacionesClases.pas' {frmPlaneacionesClases},
  ufrmInstrumentosEvaluacion in 'Catalogos\ufrmInstrumentosEvaluacion.pas' {frmInstrumentosEvaluacion};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.