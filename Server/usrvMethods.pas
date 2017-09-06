unit usrvMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider;

type
  TsrvMethods = class(TDSServerModule)
    cntData: TSQLConnection;
    dspEmpleados: TDataSetProvider;
    dtsEmpleados: TSQLDataSet;
    dtsLineasDisciplinares: TSQLDataSet;
    dspAreasCurriculares: TDataSetProvider;
    dtsAreasCurriculares: TSQLDataSet;
    dspComponentesCurriculares: TDataSetProvider;
    dtsComponentesCurriculares: TSQLDataSet;
    dspSecretariosAcademicos: TDataSetProvider;
    dtsSecretariosAcademicos: TSQLDataSet;
    dspModalidades: TDataSetProvider;
    dtsModalidades: TSQLDataSet;
    dtsPlanes: TSQLDataSet;
    dtsUnidadesAcademicas: TSQLDataSet;
    dtsPlaneacionesGenerales: TSQLDataSet;
    dtsProfesoresParticipantes: TSQLDataSet;
    dsPlaneacionesGenerales: TDataSource;
    dtsPlaneacionesClases: TSQLDataSet;
    dsPlaneacionesUnidades: TDataSource;
    dtsEvaluaciones: TSQLDataSet;
    dtsPlaneacionesUnidades: TSQLDataSet;
    dtsAcuerdos: TSQLDataSet;
    dtsReuniones: TSQLDataSet;
    dspInstrumentosEvaluacion: TDataSetProvider;
    dsPlanes: TDataSource;
    dspUnidadesRegionales: TDataSetProvider;
    dtsUnidadesRegionales: TSQLDataSet;
    dsUnidadesRegionales: TDataSource;
    dsCiclosEscolares: TDataSource;
    dtsUnidadesRegionalesID_UNIDAD_REGIONAL: TStringField;
    dtsUnidadesRegionalesNOMBRE: TStringField;
    dtsUnidadesAcademicasID: TStringField;
    dtsUnidadesAcademicasNOMBRE: TStringField;
    dtsUnidadesAcademicasID_UNIDAD_REGIONAL: TStringField;
    dtsPlanesID_PLAN: TStringField;
    dtsPlanesNOMBRE: TStringField;
    dtsPlanesID_CICLO_ESCOLAR: TStringField;
    dtsPlaneacionesGeneralesID_PLANEACION_GENERAL: TStringField;
    dtsPlaneacionesGeneralesID_PLAN: TStringField;
    dtsPlaneacionesGeneralesID_MODALIDAD: TStringField;
    dtsPlaneacionesGeneralesSEMESTRE: TStringField;
    dtsPlaneacionesGeneralesFECHA: TDateField;
    dtsPlaneacionesGeneralesLUGAR: TStringField;
    dtsPlaneacionesGeneralesID_PROFESOR_COORDINADOR: TStringField;
    dtsPlaneacionesGeneralesID_SECRETARIO_ACADEMICO: TStringField;
    dtsPlaneacionesGeneralesFECHA_INICIO: TDateField;
    dtsPlaneacionesGeneralesFECHA_CIERRE: TDateField;
    dtsPlaneacionesGeneralesNOMBRE_ASIGNATURA: TStringField;
    dtsPlaneacionesGeneralesID_COMPONENTE_CURRICULAR: TStringField;
    dtsPlaneacionesGeneralesHORAS_CURSO: TSmallintField;
    dtsPlaneacionesGeneralesHORAS_SEMANA: TSmallintField;
    dtsPlaneacionesGeneralesID_AREA_CURRICULAR: TStringField;
    dtsPlaneacionesGeneralesID_LINEA_DISCIPLINAR: TStringField;
    dtsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField;
    dtsModalidadesID: TStringField;
    dtsModalidadesNOMBRE: TStringField;
    dtsSecretariosAcademicosID: TStringField;
    dtsSecretariosAcademicosNOMBRE: TStringField;
    dtsComponentesCurricularesID: TStringField;
    dtsComponentesCurricularesNOMBRE: TStringField;
    dtsAreasCurricularesNOMBRE: TStringField;
    dtsLineasDisciplinaresID: TStringField;
    dtsLineasDisciplinaresNOMBRE: TStringField;
    dtsEmpleadosID: TStringField;
    dtsEmpleadosNOMBRE: TStringField;
    dtsInstrumentosEvaluacion: TSQLDataSet;
    dtsInstrumentosEvaluacionID: TStringField;
    dtsInstrumentosEvaluacionNOMBRE: TStringField;
    dspCiclosEscolares: TDataSetProvider;
    dtsCiclosEscolares: TSQLDataSet;
    dtsCiclosEscolaresID_CICLO_ESCOLAR: TStringField;
    dtsCiclosEscolaresNOMBRE: TStringField;
    dtsCiclosEscolaresID_UNIDAD_REGIONAL: TStringField;
    dtsCiclosEscolaresACTIVO: TSmallintField;
    dtsPlaneacionesGeneralesORIENTACIONES_GENERALES: TMemoField;
    dtsPlaneacionesGeneralesPROPOSITO_GENERAL: TMemoField;
    dtsReunionesID: TStringField;
    dtsReunionesID_PLANEACION_GENERAL: TStringField;
    dtsReunionesNOMBRE: TStringField;
    dtsReunionesPROPOSITO: TMemoField;
    dtsReunionesFECHA: TDateField;
    dtsProfesoresParticipantesID: TStringField;
    dtsProfesoresParticipantesID_PLANEACION_GENERAL: TStringField;
    dtsProfesoresParticipantesID_PROFESOR: TStringField;
    dtsProfesoresParticipantesGRUPOS: TStringField;
    dtsAcuerdosID: TStringField;
    dtsAcuerdosID_PLANEACION_GENERAL: TStringField;
    dtsAcuerdosNOMBRE: TStringField;
    dtsAcuerdosACUERDO: TMemoField;
    dtsAcuerdosPARA: TStringField;
    dtsAcuerdosSEGUIMIENTO: TMemoField;
    dtsAcuerdosFECHA: TDateField;
    dtsPlaneacionesUnidadesID_PLANEACION_UNIDAD: TStringField;
    dtsPlaneacionesUnidadesID_PLANEACION_GENERAL: TStringField;
    dtsPlaneacionesUnidadesNOMBRE: TStringField;
    dtsPlaneacionesUnidadesPROPOSITO_UNIDAD: TMemoField;
    dtsPlaneacionesUnidadesRECURSOS: TMemoField;
    dtsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TMemoField;
    dtsEvaluacionesID: TStringField;
    dtsEvaluacionesID_PLANEACION_UNIDAD: TStringField;
    dtsEvaluacionesASPECTO: TStringField;
    dtsEvaluacionesEVIDENCIA: TMemoField;
    dtsEvaluacionesPONDERACION: TSmallintField;
    dtsEvaluacionesFECHA: TDateField;
    dtsEvaluacionesID_INSTRUMENTO_EVALUACION: TStringField;
    dtsPlaneacionesClasesID_PLANEACION_CLASE: TStringField;
    dtsPlaneacionesClasesID_PLANEACION_UNIDAD: TStringField;
    dtsPlaneacionesClasesSESION: TSmallintField;
    dtsPlaneacionesClasesHORAS: TSmallintField;
    dtsPlaneacionesClasesFECHA: TDateField;
    dtsPlaneacionesClasesCONTENIDO_TEMATICO: TMemoField;
    dtsPlaneacionesClasesPROPOSITO_SESION: TMemoField;
    dtsPlaneacionesClasesSABERES_CONCEPTUALES: TMemoField;
    dtsPlaneacionesClasesSABERES_PROCEDIMENTALES: TMemoField;
    dtsPlaneacionesClasesSABERES_ACTITUDINALES: TMemoField;
    dtsPlaneacionesClasesACTIVIDAD_APERTURA: TMemoField;
    dtsPlaneacionesClasesACTIVIDAD_DESARROLLO: TMemoField;
    dtsPlaneacionesClasesACTIVIDAD_CIERRE: TMemoField;
    dtsPlaneacionesClasesRECURSOS_MATERIALES: TMemoField;
    dtsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TMemoField;
    dtsAreasCurricularesID_AREA_CURRICULAR: TStringField;
    dsAreasCurriculares: TDataSource;
    dsPlaneacionesClases: TDataSource;
    dspPerfiles: TDataSetProvider;
    dtsPerfiles: TSQLDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    dtsEmpleadosID_PERFIL: TStringField;
    dspProfesores: TDataSetProvider;
    dtsProfesores: TSQLDataSet;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    dtsPlaneacionesUnidadesHORAS: TSmallintField;
    dtsPlaneacionesUnidadesESTRATEGIAS_DIDACTICAS: TMemoField;
    dtsPlaneacionesUnidadesSABERES_CONCEPTUALES: TMemoField;
    dtsPlaneacionesUnidadesSABERES_PROCEDIMENTALES: TMemoField;
    dtsPlaneacionesUnidadesSABERES_ACTITUDINALES: TMemoField;
    dtsPlaneacionesUnidadesCONTENIDO_TEMATICO: TMemoField;
    dtsUnidadesAtributos: TSQLDataSet;
    dtsUnidadesCompetencias: TSQLDataSet;
    dtsUnidadesAtributosID_UNIDAD_ATRIBUTO: TStringField;
    dtsUnidadesAtributosID_PLANEACION_UNIDAD: TStringField;
    dtsUnidadesAtributosID_ATRIBUTO_COMPETENCIA: TStringField;
    dtsUnidadesAtributosCRITERIOS_APRENDIZAJE: TMemoField;
    dtsUnidadesCompetenciasID_UNIDAD_COMPETENCIA: TStringField;
    dtsUnidadesCompetenciasID_PLANEACION_UNIDAD: TStringField;
    dtsUnidadesCompetenciasID_COMPETENCIA_DISCIPLINAR: TStringField;
    dtsUnidadesCompetenciasCRITERIOS_APRENDIZAJE: TMemoField;
    dspAtributosCompetencias: TDataSetProvider;
    dtsAtributosCompetencias: TSQLDataSet;
    dtsAtributosCompetenciasID: TStringField;
    dtsAtributosCompetenciasNOMBRE: TStringField;
    dtsAtributosCompetenciasID_COMPETENCIA_GENERICA: TStringField;
    dspCompetenciasDisciplinares: TDataSetProvider;
    dtsCompetenciasDisciplinares: TSQLDataSet;
    dtsCompetenciasDisciplinaresID_COMPETENCIA_DISCIPLINAR: TStringField;
    dtsCompetenciasDisciplinaresNOMBRE: TStringField;
    dtsPlaneacionesClasesCOMPETENCIAS_GENERICAS: TMemoField;
    dtsPlaneacionesClasesCOMPETENCIAS_DISCIPLINARES: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation


{$R *.dfm}


end.
