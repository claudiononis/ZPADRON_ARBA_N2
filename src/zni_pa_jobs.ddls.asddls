@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Jobs'

define root view entity ZNI_PA_JOBS
  as select from znfi_pa_job

  composition [0..*] of ZNI_PA_JOBLOGENTRIES as _JobLogEntries

{
  key id             as Id,

      job_id         as JobId,

      status         as Status,

      message        as Message,

      file_name      as FileName,

      total_rows     as TotalRows,

      found_rows     as FoundRows,

      not_found_rows as NotFoundRows,

      create_count   as CreateCount,

      update_count   as UpdateCount,

      error_count    as ErrorCount,

      applied_count  as AppliedCount,

      error_text     as ErrorText,

      created_at     as CreatedAt,

      started_at     as StartedAt,

      finished_at    as FinishedAt,

      _JobLogEntries
}
