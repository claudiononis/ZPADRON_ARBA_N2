@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Upload Chunks'

define root view entity ZNI_PA_UPLOADCHUNKS
  as select from znfi_pa_upload
{
  key id           as Id,

      upload_id    as UploadId,
      chunk_index  as ChunkIndex,
      total_chunks as TotalChunks,

      file_name    as FileName,
      company_code as CompanyCode,

      content      as Content,

      created_at   as CreatedAt
}
