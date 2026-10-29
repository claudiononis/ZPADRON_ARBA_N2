@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Jobs API'
define root view entity ZNC_PA_JOBS
  provider contract transactional_query
  as projection on ZNI_PA_JOBS
{
  key Id,

      JobId,
      Status,
      Message,
      FileName,

      TotalRows,
      FoundRows,
      NotFoundRows,
      CreateCount,
      UpdateCount,
      ErrorCount,
      AppliedCount,

      ErrorText,
      CreatedAt,
      StartedAt,
      FinishedAt,

      _JobLogEntries : redirected to composition child ZNC_PA_JOBLOGENTRIES
}
