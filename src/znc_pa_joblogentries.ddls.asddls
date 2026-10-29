@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Job Log Entries API'
define view entity ZNC_PA_JOBLOGENTRIES
  as projection on ZNI_PA_JOBLOGENTRIES
{
  key Id,
      JobUuid,
      LineNumber,

      Cuit,
      BusinessPartner,
      CustomerId,
      Nombre,

      FechaDesde,
      FechaHasta,
      Alicuota,
      AltaBaja,
      CambioAlicuota,

      CategoriaFiscal,
      CategoriaFiscalEstado,
      ConditionRecord,
      PublicationDate,
      TipoContribuyente,
      Grupo,

      Estado,
      EstadoColor,
      EstadoIcono,
      Accion,
      Detalle,

      _Job : redirected to parent ZNC_PA_JOBS
}
