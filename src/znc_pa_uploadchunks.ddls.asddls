@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Padron ARBA - Upload Chunks API'

define root view entity ZNC_PA_UPLOADCHUNKS
  provider contract transactional_query
  as projection on ZNI_PA_UPLOADCHUNKS
{
  key Id,

      UploadId,
      ChunkIndex,
      TotalChunks,

      FileName,
      CompanyCode,

      Content,

      CreatedAt
}
