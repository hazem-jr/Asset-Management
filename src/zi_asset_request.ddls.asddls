@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Request Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_asset_request
  as select from zdb_asset_req
{
  key request_uuid          as RequestUUID,
      bukrs                 as CompanyCode,
      anlkl                 as AssetClass,
      text                  as Description,
      kostl                 as CostCenter,
      aufnr                 as InternalOrder,
      pspnr                 as WBSElement,
      werks                 as Plant,
      status                as Status,
      wf_instance_id        as WorkflowInstanceId,
      backend_anln1         as BackendAssetNo1,
      backend_anln2         as BackendAssetNo2,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
      

}
