@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Job Log Entries'
define view entity ZNI_PA_JOBLOGENTRIES
  as select from znfi_pa_joblog
  association to parent ZNI_PA_JOBS as _Job
    on $projection.JobUuid = _Job.Id
{
  key id                      as Id,
      job_uuid                as JobUuid,
      line_number             as LineNumber,

      cuit                    as Cuit,
      business_partner        as BusinessPartner,
      customer_id             as CustomerId,
      nombre                  as Nombre,

      fecha_desde             as FechaDesde,
      fecha_hasta             as FechaHasta,
      alicuota                as Alicuota,
      alta_baja               as AltaBaja,
      cambio_alicuota         as CambioAlicuota,

      categoria_fiscal        as CategoriaFiscal,
      categoria_fiscal_estado as CategoriaFiscalEstado,
      condition_record        as ConditionRecord,
      publication_date        as PublicationDate,
      tipo_contribuyente      as TipoContribuyente,
      grupo                   as Grupo,

      estado                  as Estado,
      estado_color            as EstadoColor,
      estado_icono            as EstadoIcono,
      accion                  as Accion,
      detalle                 as Detalle,

      _Job
}
