@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Access Request Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@Search.searchable: true

define root view entity ZC_ASSET_REQuest
  provider contract transactional_query as projection on zi_asset_request
{
    key RequestUUID,
    CompanyCode,
    AssetClass,
    Description,
    CostCenter,
    InternalOrder,
    WBSElement,
    Plant,
    Status,
    WorkflowInstanceId,
    BackendAssetNo1,
    BackendAssetNo2,
    CreatedBy,
    CreatedAt,
    ChangedBy,
    ChangedAt,
    LastChangedAt,
    LastChangedBy
}
