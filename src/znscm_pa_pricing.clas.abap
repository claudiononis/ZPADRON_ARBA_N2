"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_SLSPRICINGCONDITIONRECORD_SRV</em>
CLASS znscm_pa_pricing DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgCndnRecdSuplmntType</p>
      BEGIN OF tys_a_sls_prcg_cndn_recd_sup_2,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 2,
        "! ConditionTable
        condition_table            TYPE c LENGTH 3,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! ConditionTextID
        condition_text_id          TYPE c LENGTH 10,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 1,
        "! ConditionScaleQuantity
        condition_scale_quantity   TYPE p LENGTH 8 DECIMALS 3,
        "! ConditionScaleQuantityUnit
        condition_scale_quantity_u TYPE c LENGTH 3,
        "! ConditionScaleAmount
        condition_scale_amount     TYPE p LENGTH 9 DECIMALS 3,
        "! ConditionScaleAmountCurrency
        condition_scale_amount_cur TYPE c LENGTH 5,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 1,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionRateValueUnit
        condition_rate_value_unit  TYPE c LENGTH 5,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioUnit
        condition_rate_ratio_unit  TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionToBaseQtyNmrtr
        condition_to_base_qty_nmrt TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionToBaseQtyDnmntr
        condition_to_base_qty_dnmn TYPE p LENGTH 3 DECIMALS 0,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ConditionLowerLimit
        condition_lower_limit      TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionLowerLimitAmount
        condition_lower_limit_amou TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionLowerLimitRatio
        condition_lower_limit_rati TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionUpperLimit
        condition_upper_limit      TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionUpperLimitAmount
        condition_upper_limit_amou TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionUpperLimitRatio
        condition_upper_limit_rati TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionAlternativeCurrency
        condition_alternative_curr TYPE c LENGTH 5,
        "! ConditionExclusion
        condition_exclusion        TYPE c LENGTH 1,
        "! ConditionIsDeleted
        condition_is_deleted       TYPE abap_bool,
        "! AdditionalValueDays
        additional_value_days      TYPE c LENGTH 2,
        "! FixedValueDate
        fixed_value_date           TYPE datn,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! CndnMaxNumberOfSalesOrders
        cndn_max_number_of_sales_o TYPE c LENGTH 2,
        "! MinimumConditionBasisValue
        minimum_condition_basis_va TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumConditionBasisValue
        maximum_condition_basis_va TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumConditionAmount
        maximum_condition_amount   TYPE p LENGTH 8 DECIMALS 3,
        "! IncrementalScale
        incremental_scale          TYPE c LENGTH 4,
        "! PricingScaleLine
        pricing_scale_line         TYPE c LENGTH 4,
        "! ConditionReleaseStatus
        condition_release_status   TYPE c LENGTH 1,
        "! SalesPriceApprovalRequest
        sales_price_approval_reque TYPE c LENGTH 10,
        "! ConditionChangeReason
        condition_change_reason    TYPE c LENGTH 3,
        "! PrevApprovedConditionRecord
        prev_approved_condition_re TYPE c LENGTH 10,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_cndn_recd_sup_2,
      "! <p class="shorttext synchronized">List of A_SlsPrcgCndnRecdSuplmntType</p>
      tyt_a_sls_prcg_cndn_recd_sup_2 TYPE STANDARD TABLE OF tys_a_sls_prcg_cndn_recd_sup_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgCndnRecdValidityType</p>
      BEGIN OF tys_a_sls_prcg_cndn_recd_val_2,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionReleaseStatus
        condition_release_status   TYPE c LENGTH 1,
        "! DepartureCountry
        departure_country          TYPE c LENGTH 3,
        "! SalesDocument
        sales_document             TYPE c LENGTH 10,
        "! SalesDocumentItem
        sales_document_item        TYPE c LENGTH 6,
        "! BillableControl
        billable_control           TYPE c LENGTH 2,
        "! Industry
        industry                   TYPE c LENGTH 4,
        "! CityCode
        city_code                  TYPE c LENGTH 4,
        "! ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! County
        county                     TYPE c LENGTH 3,
        "! EngagementProject
        engagement_project         TYPE c LENGTH 40,
        "! ConfigurationNumber
        configuration_number       TYPE c LENGTH 18,
        "! BR_NFDocumentType
        br_nfdocument_type         TYPE c LENGTH 1,
        "! BRSpcfcFreeDefinedField1
        brspcfc_free_defined_field TYPE c LENGTH 40,
        "! BRSpcfcFreeDefinedField2
        brspcfc_free_defined_fie_2 TYPE c LENGTH 40,
        "! BRSpcfcFreeDefinedField3
        brspcfc_free_defined_fie_3 TYPE c LENGTH 40,
        "! InternationalArticleNumber
        international_article_numb TYPE c LENGTH 18,
        "! TechnicalObjectType
        technical_object_type      TYPE c LENGTH 10,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! CustomerHierarchy
        customer_hierarchy         TYPE c LENGTH 10,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! AccountTaxType
        account_tax_type           TYPE c LENGTH 2,
        "! TxRlvnceClassfctnForArgentina
        tx_rlvnce_classfctn_for_ar TYPE c LENGTH 10,
        "! BR_TaxCode
        br_tax_code                TYPE c LENGTH 2,
        "! LocalSalesTaxApplicabilityCode
        local_sales_tax_applicabil TYPE c LENGTH 3,
        "! CustomerGroup
        customer_group             TYPE c LENGTH 2,
        "! CustomerPriceGroup
        customer_price_group       TYPE c LENGTH 2,
        "! MaterialPricingGroup
        material_pricing_group     TYPE c LENGTH 2,
        "! SoldToParty
        sold_to_party              TYPE c LENGTH 10,
        "! BPForSoldToParty
        bpfor_sold_to_party        TYPE c LENGTH 10,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! BPForCustomer
        bpfor_customer             TYPE c LENGTH 10,
        "! PayerParty
        payer_party                TYPE c LENGTH 10,
        "! BPForPayerParty
        bpfor_payer_party          TYPE c LENGTH 10,
        "! ShipToParty
        ship_to_party              TYPE c LENGTH 10,
        "! BPForShipToParty
        bpfor_ship_to_party        TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! BPForSupplier
        bpfor_supplier             TYPE c LENGTH 10,
        "! DestinationCountry
        destination_country        TYPE c LENGTH 3,
        "! MaterialGroup
        material_group             TYPE c LENGTH 9,
        "! Material
        material                   TYPE c LENGTH 40,
        "! ReturnsRefundExtent
        returns_refund_extent      TYPE c LENGTH 3,
        "! AdditionalMaterialGroup1
        additional_material_group  TYPE c LENGTH 3,
        "! AdditionalMaterialGroup2
        additional_material_grou_2 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup3
        additional_material_grou_3 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup4
        additional_material_grou_4 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup5
        additional_material_grou_5 TYPE c LENGTH 3,
        "! Personnel
        personnel                  TYPE c LENGTH 8,
        "! PriceListType
        price_list_type            TYPE c LENGTH 2,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! Region
        region                     TYPE c LENGTH 3,
        "! EngagementProjectServiceOrg
        engagement_project_service TYPE c LENGTH 5,
        "! RequirementSegment
        requirement_segment        TYPE c LENGTH 40,
        "! StockSegment
        stock_segment              TYPE c LENGTH 40,
        "! Division
        division                   TYPE c LENGTH 2,
        "! CommodityCode
        commodity_code             TYPE c LENGTH 17,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! BRSpcfcTaxBasePercentageCode
        brspcfc_tax_base_percentag TYPE c LENGTH 1,
        "! BRSpcfcTxGrpDynTaxExceptions
        brspcfc_tx_grp_dyn_tax_exc TYPE c LENGTH 2,
        "! CustomerTaxClassification1
        customer_tax_classificatio TYPE c LENGTH 1,
        "! CustomerTaxClassification2
        customer_tax_classificat_2 TYPE c LENGTH 1,
        "! CustomerTaxClassification3
        customer_tax_classificat_3 TYPE c LENGTH 1,
        "! CustomerTaxClassification4
        customer_tax_classificat_4 TYPE c LENGTH 1,
        "! CustomerTaxClassification5
        customer_tax_classificat_5 TYPE c LENGTH 1,
        "! CustomerTaxClassification6
        customer_tax_classificat_6 TYPE c LENGTH 1,
        "! CustomerTaxClassification7
        customer_tax_classificat_7 TYPE c LENGTH 1,
        "! CustomerTaxClassification8
        customer_tax_classificat_8 TYPE c LENGTH 1,
        "! CustomerTaxClassification9
        customer_tax_classificat_9 TYPE c LENGTH 1,
        "! ProductTaxClassification1
        product_tax_classification TYPE c LENGTH 1,
        "! ProductTaxClassification2
        product_tax_classificati_2 TYPE c LENGTH 1,
        "! ProductTaxClassification3
        product_tax_classificati_3 TYPE c LENGTH 1,
        "! ProductTaxClassification4
        product_tax_classificati_4 TYPE c LENGTH 1,
        "! ProductTaxClassification5
        product_tax_classificati_5 TYPE c LENGTH 1,
        "! ProductTaxClassification6
        product_tax_classificati_6 TYPE c LENGTH 1,
        "! ProductTaxClassification7
        product_tax_classificati_7 TYPE c LENGTH 1,
        "! ProductTaxClassification8
        product_tax_classificati_8 TYPE c LENGTH 1,
        "! ProductTaxClassification9
        product_tax_classificati_9 TYPE c LENGTH 1,
        "! TradingContract
        trading_contract           TYPE c LENGTH 10,
        "! TradingContractItem
        trading_contract_item      TYPE c LENGTH 6,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! BRSpcfcTaxDepartureRegion
        brspcfc_tax_departure_regi TYPE c LENGTH 3,
        "! BRSpcfcTaxDestinationRegion
        brspcfc_tax_destination_re TYPE c LENGTH 3,
        "! MainItemMaterialPricingGroup
        main_item_material_pricing TYPE c LENGTH 2,
        "! MainItemPricingRefMaterial
        main_item_pricing_ref_mate TYPE c LENGTH 40,
        "! VariantCondition
        variant_condition          TYPE c LENGTH 26,
        "! ValueAddedServiceChargeCode
        value_added_service_charge TYPE c LENGTH 3,
        "! SDDocument
        sddocument                 TYPE c LENGTH 10,
        "! ReferenceSDDocument
        reference_sddocument       TYPE c LENGTH 10,
        "! ReferenceSDDocumentItem
        reference_sddocument_item  TYPE c LENGTH 6,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! SalesOrderSalesOrganization
        sales_order_sales_organiza TYPE c LENGTH 4,
        "! OrderQuantityUnit
        order_quantity_unit        TYPE c LENGTH 3,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! WBSElementInternalID
        wbselement_internal_id     TYPE c LENGTH 24,
        "! WBSElementExternalID
        wbselement_external_id     TYPE c LENGTH 24,
        "! WorkPackage
        work_package               TYPE c LENGTH 24,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! PlantRegion
        plant_region               TYPE c LENGTH 3,
        "! WorkItem
        work_item                  TYPE c LENGTH 10,
        "! ConditionProcessingStatus
        condition_processing_statu TYPE c LENGTH 2,
        "! PricingDate
        pricing_date               TYPE datn,
        "! ConditionIsExclusive
        condition_is_exclusive     TYPE abap_bool,
        "! ConditionScaleBasisValue
        condition_scale_basis_valu TYPE c LENGTH 7,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! ServiceDocument
        service_document           TYPE c LENGTH 10,
        "! ServiceDocumentItem
        service_document_item      TYPE c LENGTH 6,
        "! TimeSheetOvertimeCategory
        time_sheet_overtime_catego TYPE c LENGTH 4,
        "! SalesSDDocumentCategory
        sales_sddocument_category  TYPE c LENGTH 4,
        "! ReturnReason
        return_reason              TYPE c LENGTH 3,
        "! ProdUnivHierarchyNode
        prod_univ_hierarchy_node   TYPE c LENGTH 24,
        "! ProductHierarchyNode
        product_hierarchy_node     TYPE c LENGTH 24,
        "! CustomerConditionGroup
        customer_condition_group   TYPE c LENGTH 2,
        "! ShippingType
        shipping_type              TYPE c LENGTH 2,
        "! SubscriptionContractDuration
        subscription_contract_dura TYPE c LENGTH 13,
        "! SubscrpnContrDurationUnit
        subscrpn_contr_duration_un TYPE c LENGTH 12,
        "! SubscriptionContractLockReason
        subscription_contract_lock TYPE c LENGTH 8,
        "! CrsCtlgMappgPriceVersionNumber
        crs_ctlg_mappg_price_versi TYPE c LENGTH 4,
        "! OrderType
        order_type                 TYPE c LENGTH 4,
        "! SalesDocumentType
        sales_document_type        TYPE c LENGTH 4,
        "! SDDocumentReason
        sddocument_reason          TYPE c LENGTH 3,
        "! VolumeRebateGroup
        volume_rebate_group        TYPE c LENGTH 2,
        "! ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! SalesDistrict
        sales_district             TYPE c LENGTH 6,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! PurgDocSupplyingPlant
        purg_doc_supplying_plant   TYPE c LENGTH 4,
        "! MatUsageIndicator
        mat_usage_indicator        TYPE c LENGTH 3,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! PlantCounty
        plant_county               TYPE c LENGTH 3,
        "! PlantCity
        plant_city                 TYPE c LENGTH 4,
        "! MaterialExternalGroup
        material_external_group    TYPE c LENGTH 18,
        "! CustomerHierarchyRootNode
        customer_hierarchy_root_no TYPE c LENGTH 20,
        "! CustomerHierarchyNodeID
        customer_hierarchy_node_id TYPE c LENGTH 40,
        "! CustomerHierarchyNodeType
        customer_hierarchy_node_ty TYPE c LENGTH 30,
        "! AdditionalCustomerGroup1
        additional_customer_group  TYPE c LENGTH 3,
        "! AdditionalCustomerGroup2
        additional_customer_grou_2 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup3
        additional_customer_grou_3 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup4
        additional_customer_grou_4 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup5
        additional_customer_grou_5 TYPE c LENGTH 3,
        "! SDDocumentItem
        sddocument_item            TYPE c LENGTH 6,
        "! CndnBillingDocumentCategory
        cndn_billing_document_cate TYPE c LENGTH 1,
        "! Country
        country                    TYPE c LENGTH 3,
        "! CustomerPurchaseOrderType
        customer_purchase_order_ty TYPE c LENGTH 4,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! SalesDocumentItemCategory
        sales_document_item_catego TYPE c LENGTH 4,
        "! BillToParty
        bill_to_party              TYPE c LENGTH 10,
        "! BusinessPartnerIndustryCode
        business_partner_industry  TYPE c LENGTH 10,
        "! BillingDocumentType
        billing_document_type      TYPE c LENGTH 4,
        "! MatlAccountAssignmentGroup
        matl_account_assignment_gr TYPE c LENGTH 2,
        "! Route
        route                      TYPE c LENGTH 6,
        "! PRAContract
        pracontract                TYPE c LENGTH 10,
        "! Well
        well                       TYPE c LENGTH 15,
        "! WellCompletion
        well_completion            TYPE c LENGTH 5,
        "! MeasurementPoint
        measurement_point          TYPE c LENGTH 20,
        "! PricingFormulaNumber
        pricing_formula_number     TYPE c LENGTH 10,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_cndn_recd_val_2,
      "! <p class="shorttext synchronized">List of A_SlsPrcgCndnRecdValidityType</p>
      tyt_a_sls_prcg_cndn_recd_val_2 TYPE STANDARD TABLE OF tys_a_sls_prcg_cndn_recd_val_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgCndnRecordScaleType</p>
      BEGIN OF tys_a_sls_prcg_cndn_record_s_2,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 2,
        "! <em>Key property</em> ConditionScaleLine
        condition_scale_line       TYPE c LENGTH 4,
        "! ConditionScaleQuantity
        condition_scale_quantity   TYPE p LENGTH 8 DECIMALS 3,
        "! ConditionScaleQuantityUnit
        condition_scale_quantity_u TYPE c LENGTH 3,
        "! ConditionScaleAmount
        condition_scale_amount     TYPE p LENGTH 9 DECIMALS 3,
        "! ConditionScaleAmountCurrency
        condition_scale_amount_cur TYPE c LENGTH 5,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionRateValueUnit
        condition_rate_value_unit  TYPE c LENGTH 5,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioUnit
        condition_rate_ratio_unit  TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_cndn_record_s_2,
      "! <p class="shorttext synchronized">List of A_SlsPrcgCndnRecordScaleType</p>
      tyt_a_sls_prcg_cndn_record_s_2 TYPE STANDARD TABLE OF tys_a_sls_prcg_cndn_record_s_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgCndnSupplementTextType</p>
      BEGIN OF tys_a_sls_prcg_cndn_suppleme_2,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 2,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ConditionText
        condition_text             TYPE c LENGTH 40,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_cndn_suppleme_2,
      "! <p class="shorttext synchronized">List of A_SlsPrcgCndnSupplementTextType</p>
      tyt_a_sls_prcg_cndn_suppleme_2 TYPE STANDARD TABLE OF tys_a_sls_prcg_cndn_suppleme_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgConditionRecordType</p>
      BEGIN OF tys_a_sls_prcg_condition_rec_3,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 2,
        "! ConditionTable
        condition_table            TYPE c LENGTH 3,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ConditionSearchTermValue
        condition_search_term_valu TYPE c LENGTH 10,
        "! ConditionTextID
        condition_text_id          TYPE c LENGTH 10,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 1,
        "! ConditionScaleQuantity
        condition_scale_quantity   TYPE p LENGTH 8 DECIMALS 3,
        "! ConditionScaleQuantityUnit
        condition_scale_quantity_u TYPE c LENGTH 3,
        "! ConditionScaleAmount
        condition_scale_amount     TYPE p LENGTH 9 DECIMALS 3,
        "! ConditionScaleAmountCurrency
        condition_scale_amount_cur TYPE c LENGTH 5,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 1,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionRateValueUnit
        condition_rate_value_unit  TYPE c LENGTH 5,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioUnit
        condition_rate_ratio_unit  TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionToBaseQtyNmrtr
        condition_to_base_qty_nmrt TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionToBaseQtyDnmntr
        condition_to_base_qty_dnmn TYPE p LENGTH 3 DECIMALS 0,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ConditionLowerLimit
        condition_lower_limit      TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionLowerLimitAmount
        condition_lower_limit_amou TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionLowerLimitRatio
        condition_lower_limit_rati TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionUpperLimit
        condition_upper_limit      TYPE p LENGTH 7 DECIMALS 3,
        "! ConditionUpperLimitAmount
        condition_upper_limit_amou TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionUpperLimitRatio
        condition_upper_limit_rati TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionAlternativeCurrency
        condition_alternative_curr TYPE c LENGTH 5,
        "! ConditionExclusion
        condition_exclusion        TYPE c LENGTH 1,
        "! ConditionIsDeleted
        condition_is_deleted       TYPE abap_bool,
        "! AdditionalValueDays
        additional_value_days      TYPE c LENGTH 2,
        "! FixedValueDate
        fixed_value_date           TYPE datn,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! CndnMaxNumberOfSalesOrders
        cndn_max_number_of_sales_o TYPE c LENGTH 2,
        "! MinimumConditionBasisValue
        minimum_condition_basis_va TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumConditionBasisValue
        maximum_condition_basis_va TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumConditionAmount
        maximum_condition_amount   TYPE p LENGTH 8 DECIMALS 3,
        "! IncrementalScale
        incremental_scale          TYPE c LENGTH 4,
        "! PricingScaleLine
        pricing_scale_line         TYPE c LENGTH 4,
        "! ConditionReleaseStatus
        condition_release_status   TYPE c LENGTH 1,
        "! SalesPriceApprovalRequest
        sales_price_approval_reque TYPE c LENGTH 10,
        "! ConditionChangeReason
        condition_change_reason    TYPE c LENGTH 3,
        "! PrevApprovedConditionRecord
        prev_approved_condition_re TYPE c LENGTH 10,
        "! ConditionTaxCode
        condition_tax_code         TYPE c LENGTH 2,
        "! ConditionWithholdingTaxCode
        condition_withholding_tax  TYPE c LENGTH 2,
        "! TaxExemptionLicense
        tax_exemption_license      TYPE c LENGTH 24,
        "! LicenseGrantDate
        license_grant_date         TYPE datn,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! SAPObjectNodeType
        sapobject_node_type        TYPE c LENGTH 30,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_condition_rec_3,
      "! <p class="shorttext synchronized">List of A_SlsPrcgConditionRecordType</p>
      tyt_a_sls_prcg_condition_rec_3 TYPE STANDARD TABLE OF tys_a_sls_prcg_condition_rec_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsPrcgConditionRecordTextType</p>
      BEGIN OF tys_a_sls_prcg_condition_rec_4,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 2,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ConditionText
        condition_text             TYPE c LENGTH 40,
        "! ETag
        etag                       TYPE c LENGTH 40,
        "! odata.etag
        etag_2                     TYPE string,
      END OF tys_a_sls_prcg_condition_rec_4,
      "! <p class="shorttext synchronized">List of A_SlsPrcgConditionRecordTextType</p>
      tyt_a_sls_prcg_condition_rec_4 TYPE STANDARD TABLE OF tys_a_sls_prcg_condition_rec_4 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_SlsPrcgCndnRecdSuplmnt
        "! <br/> Collection of type 'A_SlsPrcgCndnRecdSuplmntType'
        a_sls_prcg_cndn_recd_suplm TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CNDN_RECD_SUPLM',
        "! A_SlsPrcgCndnRecdValidity
        "! <br/> Collection of type 'A_SlsPrcgCndnRecdValidityType'
        a_sls_prcg_cndn_recd_valid TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CNDN_RECD_VALID',
        "! A_SlsPrcgCndnRecordScale
        "! <br/> Collection of type 'A_SlsPrcgCndnRecordScaleType'
        a_sls_prcg_cndn_record_sca TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CNDN_RECORD_SCA',
        "! A_SlsPrcgCndnSupplementText
        "! <br/> Collection of type 'A_SlsPrcgCndnSupplementTextType'
        a_sls_prcg_cndn_supplement TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CNDN_SUPPLEMENT',
        "! A_SlsPrcgConditionRecord
        "! <br/> Collection of type 'A_SlsPrcgConditionRecordType'
        a_sls_prcg_condition_recor TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CONDITION_RECOR',
        "! A_SlsPrcgConditionRecordText
        "! <br/> Collection of type 'A_SlsPrcgConditionRecordTextType'
        a_sls_prcg_condition_rec_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_PRCG_CONDITION_REC_2',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgCndnRecdSuplmntType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_cndn_recd_sup_2}
        BEGIN OF a_sls_prcg_cndn_recd_sup_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgCndnRecdValidity
            to_sls_prcg_cndn_recd_vali TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_VALI',
            "! to_SlsPrcgCndnRecordScale
            to_sls_prcg_cndn_record_sc TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECORD_SC',
            "! to_SlsPrcgCndnSupplementText
            to_sls_prcg_cndn_supplemen TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_SUPPLEMEN',
            "! to_SlsPrcgConditionRecord
            to_sls_prcg_condition_reco TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CONDITION_RECO',
          END OF navigation,
        END OF a_sls_prcg_cndn_recd_sup_2,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgCndnRecdValidityType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_cndn_recd_val_2}
        BEGIN OF a_sls_prcg_cndn_recd_val_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgCndnRecdSuplmnt
            to_sls_prcg_cndn_recd_supl TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_SUPL',
            "! to_SlsPrcgConditionRecord
            to_sls_prcg_condition_reco TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CONDITION_RECO',
          END OF navigation,
        END OF a_sls_prcg_cndn_recd_val_2,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgCndnRecordScaleType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_cndn_record_s_2}
        BEGIN OF a_sls_prcg_cndn_record_s_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgCndnRecdSuplmnt
            to_sls_prcg_cndn_recd_supl TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_SUPL',
            "! to_SlsPrcgConditionRecord
            to_sls_prcg_condition_reco TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CONDITION_RECO',
          END OF navigation,
        END OF a_sls_prcg_cndn_record_s_2,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgCndnSupplementTextType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_cndn_suppleme_2}
        BEGIN OF a_sls_prcg_cndn_suppleme_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgCndnRecdSuplmnt
            to_sls_prcg_cndn_recd_supl TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_SUPL',
          END OF navigation,
        END OF a_sls_prcg_cndn_suppleme_2,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgConditionRecordType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_condition_rec_3}
        BEGIN OF a_sls_prcg_condition_rec_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgCndnRecdSuplmnt
            to_sls_prcg_cndn_recd_supl TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_SUPL',
            "! to_SlsPrcgCndnRecdValidity
            to_sls_prcg_cndn_recd_vali TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECD_VALI',
            "! to_SlsPrcgCndnRecordScale
            to_sls_prcg_cndn_record_sc TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CNDN_RECORD_SC',
            "! to_SlsPrcgConditionRecordText
            to_sls_prcg_condition_reco TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CONDITION_RECO',
          END OF navigation,
        END OF a_sls_prcg_condition_rec_3,
        "! <p class="shorttext synchronized">Internal names for A_SlsPrcgConditionRecordTextType</p>
        "! See also structure type {@link ..tys_a_sls_prcg_condition_rec_4}
        BEGIN OF a_sls_prcg_condition_rec_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsPrcgConditionRecord
            to_sls_prcg_condition_reco TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_PRCG_CONDITION_RECO',
          END OF navigation,
        END OF a_sls_prcg_condition_rec_4,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define A_SlsPrcgCndnRecdSuplmntType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_cndn_recd_sup_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsPrcgCndnRecdValidityType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_cndn_recd_val_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsPrcgCndnRecordScaleType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_cndn_record_s_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsPrcgCndnSupplementTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_cndn_suppleme_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsPrcgConditionRecordType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_condition_rec_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsPrcgConditionRecordTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_prcg_condition_rec_4 RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZNSCM_PA_PRICING IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_SLSPRICINGCONDITIONRECORD_SRV' ) ##NO_TEXT.

    def_a_sls_prcg_cndn_recd_sup_2( ).
    def_a_sls_prcg_cndn_recd_val_2( ).
    def_a_sls_prcg_cndn_record_s_2( ).
    def_a_sls_prcg_cndn_suppleme_2( ).
    def_a_sls_prcg_condition_rec_3( ).
    def_a_sls_prcg_condition_rec_4( ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_cndn_recd_sup_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CNDN_RECD_SUP_2'
                                    is_structure              = VALUE tys_a_sls_prcg_cndn_recd_sup_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgCndnRecdSuplmntType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CNDN_RECD_SUPLM' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgCndnRecdSuplmnt' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TABLE' ).
    lo_primitive_property->set_edm_name( 'ConditionTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_START_D' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'ConditionTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT_CUR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmountCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TO_BASE_QTY_NMRT' ).
    lo_primitive_property->set_edm_name( 'ConditionToBaseQtyNmrtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TO_BASE_QTY_DNMN' ).
    lo_primitive_property->set_edm_name( 'ConditionToBaseQtyDnmntr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT_AMOU' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimitAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT_RATI' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimitRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT_AMOU' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimitAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT_RATI' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimitRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ALTERNATIVE_CURR' ).
    lo_primitive_property->set_edm_name( 'ConditionAlternativeCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_EXCLUSION' ).
    lo_primitive_property->set_edm_name( 'ConditionExclusion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_DELETED' ).
    lo_primitive_property->set_edm_name( 'ConditionIsDeleted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_VALUE_DAYS' ).
    lo_primitive_property->set_edm_name( 'AdditionalValueDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_VALUE_DATE' ).
    lo_primitive_property->set_edm_name( 'FixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_MAX_NUMBER_OF_SALES_O' ).
    lo_primitive_property->set_edm_name( 'CndnMaxNumberOfSalesOrders' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_CONDITION_BASIS_VA' ).
    lo_primitive_property->set_edm_name( 'MinimumConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_CONDITION_BASIS_VA' ).
    lo_primitive_property->set_edm_name( 'MaximumConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'MaximumConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCREMENTAL_SCALE' ).
    lo_primitive_property->set_edm_name( 'IncrementalScale' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_LINE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RELEASE_STATUS' ).
    lo_primitive_property->set_edm_name( 'ConditionReleaseStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_PRICE_APPROVAL_REQUE' ).
    lo_primitive_property->set_edm_name( 'SalesPriceApprovalRequest' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CHANGE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionChangeReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREV_APPROVED_CONDITION_RE' ).
    lo_primitive_property->set_edm_name( 'PrevApprovedConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_VALI' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdValidity' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_VAL_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECORD_SC' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecordScale' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECORD_S_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_SUPPLEMEN' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnSupplementText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_SUPPLEME_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CONDITION_RECO' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgConditionRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CONDITION_REC_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_cndn_recd_val_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CNDN_RECD_VAL_2'
                                    is_structure              = VALUE tys_a_sls_prcg_cndn_recd_val_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgCndnRecdValidityType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CNDN_RECD_VALID' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgCndnRecdValidity' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_START_D' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RELEASE_STATUS' ).
    lo_primitive_property->set_edm_name( 'ConditionReleaseStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SalesDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLABLE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'BillableControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'Industry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGAGEMENT_PROJECT' ).
    lo_primitive_property->set_edm_name( 'EngagementProject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFIGURATION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ConfigurationNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_NFDOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_NFDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_FREE_DEFINED_FIELD' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcFreeDefinedField1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_FREE_DEFINED_FIE_2' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcFreeDefinedField2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_FREE_DEFINED_FIE_3' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcFreeDefinedField3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TECHNICAL_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TechnicalObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'CustomerHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_TRANSFER_LOCATIO' ).
    lo_primitive_property->set_edm_name( 'IncotermsTransferLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 28 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_TAX_TYPE' ).
    lo_primitive_property->set_edm_name( 'AccountTaxType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TX_RLVNCE_CLASSFCTN_FOR_AR' ).
    lo_primitive_property->set_edm_name( 'TxRlvnceClassfctnForArgentina' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'BR_TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCAL_SALES_TAX_APPLICABIL' ).
    lo_primitive_property->set_edm_name( 'LocalSalesTaxApplicabilityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PRICE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerPriceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_PRICING_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialPricingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOLD_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'SoldToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFOR_SOLD_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'BPForSoldToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFOR_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'BPForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYER_PARTY' ).
    lo_primitive_property->set_edm_name( 'PayerParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFOR_PAYER_PARTY' ).
    lo_primitive_property->set_edm_name( 'BPForPayerParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'ShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFOR_SHIP_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'BPForShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFOR_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'BPForSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DestinationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RETURNS_REFUND_EXTENT' ).
    lo_primitive_property->set_edm_name( 'ReturnsRefundExtent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL' ).
    lo_primitive_property->set_edm_name( 'Personnel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'PriceListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGAGEMENT_PROJECT_SERVICE' ).
    lo_primitive_property->set_edm_name( 'EngagementProjectServiceOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_SEGMENT' ).
    lo_primitive_property->set_edm_name( 'RequirementSegment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_SEGMENT' ).
    lo_primitive_property->set_edm_name( 'StockSegment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMODITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CommodityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 17 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_TAX_CTRL_CODE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionTaxCtrlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_TAX_BASE_PERCENTAG' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcTaxBasePercentageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_TX_GRP_DYN_TAX_EXC' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcTxGrpDynTaxExceptions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICATIO' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_2' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_3' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_4' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_5' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_6' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_7' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_8' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_9' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_2' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_3' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_4' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_5' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_6' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_7' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_8' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_9' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRADING_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'TradingContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRADING_CONTRACT_ITEM' ).
    lo_primitive_property->set_edm_name( 'TradingContractItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_TAX_DEPARTURE_REGI' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcTaxDepartureRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRSPCFC_TAX_DESTINATION_RE' ).
    lo_primitive_property->set_edm_name( 'BRSpcfcTaxDestinationRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_ITEM_MATERIAL_PRICING' ).
    lo_primitive_property->set_edm_name( 'MainItemMaterialPricingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_ITEM_PRICING_REF_MATE' ).
    lo_primitive_property->set_edm_name( 'MainItemPricingRefMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANT_CONDITION' ).
    lo_primitive_property->set_edm_name( 'VariantCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUE_ADDED_SERVICE_CHARGE' ).
    lo_primitive_property->set_edm_name( 'ValueAddedServiceChargeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_SALES_ORGANIZA' ).
    lo_primitive_property->set_edm_name( 'SalesOrderSalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBSELEMENT_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'WBSElementInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBSELEMENT_EXTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'WBSElementExternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_PACKAGE' ).
    lo_primitive_property->set_edm_name( 'WorkPackage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_REGION' ).
    lo_primitive_property->set_edm_name( 'PlantRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_ITEM' ).
    lo_primitive_property->set_edm_name( 'WorkItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_PROCESSING_STATU' ).
    lo_primitive_property->set_edm_name( 'ConditionProcessingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE' ).
    lo_primitive_property->set_edm_name( 'PricingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_EXCLUSIVE' ).
    lo_primitive_property->set_edm_name( 'ConditionIsExclusive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_VALU' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ServiceDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ServiceDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TIME_SHEET_OVERTIME_CATEGO' ).
    lo_primitive_property->set_edm_name( 'TimeSheetOvertimeCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SDDOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SalesSDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RETURN_REASON' ).
    lo_primitive_property->set_edm_name( 'ReturnReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_UNIV_HIERARCHY_NODE' ).
    lo_primitive_property->set_edm_name( 'ProdUnivHierarchyNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_TYPE' ).
    lo_primitive_property->set_edm_name( 'ShippingType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSCRIPTION_CONTRACT_DURA' ).
    lo_primitive_property->set_edm_name( 'SubscriptionContractDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSCRPN_CONTR_DURATION_UN' ).
    lo_primitive_property->set_edm_name( 'SubscrpnContrDurationUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSCRIPTION_CONTRACT_LOCK' ).
    lo_primitive_property->set_edm_name( 'SubscriptionContractLockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CRS_CTLG_MAPPG_PRICE_VERSI' ).
    lo_primitive_property->set_edm_name( 'CrsCtlgMappgPriceVersionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_TYPE' ).
    lo_primitive_property->set_edm_name( 'OrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'SDDocumentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_REBATE_GROUP' ).
    lo_primitive_property->set_edm_name( 'VolumeRebateGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DISTRICT' ).
    lo_primitive_property->set_edm_name( 'SalesDistrict' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH' ).
    lo_primitive_property->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURG_DOC_SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'PurgDocSupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAT_USAGE_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'MatUsageIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_COUNTY' ).
    lo_primitive_property->set_edm_name( 'PlantCounty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_CITY' ).
    lo_primitive_property->set_edm_name( 'PlantCity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_EXTERNAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialExternalGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HIERARCHY_ROOT_NO' ).
    lo_primitive_property->set_edm_name( 'CustomerHierarchyRootNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HIERARCHY_NODE_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerHierarchyNodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HIERARCHY_NODE_TY' ).
    lo_primitive_property->set_edm_name( 'CustomerHierarchyNodeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'SDDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_BILLING_DOCUMENT_CATE' ).
    lo_primitive_property->set_edm_name( 'CndnBillingDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PURCHASE_ORDER_TY' ).
    lo_primitive_property->set_edm_name( 'CustomerPurchaseOrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_ITEM_CATEGO' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'BillToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIndustryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_ACCOUNT_ASSIGNMENT_GR' ).
    lo_primitive_property->set_edm_name( 'MatlAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUTE' ).
    lo_primitive_property->set_edm_name( 'Route' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRACONTRACT' ).
    lo_primitive_property->set_edm_name( 'PRAContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WELL' ).
    lo_primitive_property->set_edm_name( 'Well' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WELL_COMPLETION' ).
    lo_primitive_property->set_edm_name( 'WellCompletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MEASUREMENT_POINT' ).
    lo_primitive_property->set_edm_name( 'MeasurementPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_FORMULA_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PricingFormulaNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_SUPL' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdSuplmnt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_SUP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CONDITION_RECO' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgConditionRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CONDITION_REC_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_cndn_record_s_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CNDN_RECORD_S_2'
                                    is_structure              = VALUE tys_a_sls_prcg_cndn_record_s_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgCndnRecordScaleType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CNDN_RECORD_SCA' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgCndnRecordScale' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_LINE' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT_CUR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmountCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_SUPL' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdSuplmnt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_SUP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CONDITION_RECO' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgConditionRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CONDITION_REC_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_cndn_suppleme_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CNDN_SUPPLEME_2'
                                    is_structure              = VALUE tys_a_sls_prcg_cndn_suppleme_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgCndnSupplementTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CNDN_SUPPLEMENT' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgCndnSupplementText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TEXT' ).
    lo_primitive_property->set_edm_name( 'ConditionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_SUPL' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdSuplmnt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_SUP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_condition_rec_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CONDITION_REC_3'
                                    is_structure              = VALUE tys_a_sls_prcg_condition_rec_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgConditionRecordType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CONDITION_RECOR' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgConditionRecord' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TABLE' ).
    lo_primitive_property->set_edm_name( 'ConditionTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_START_D' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEARCH_TERM_VALU' ).
    lo_primitive_property->set_edm_name( 'ConditionSearchTermValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'ConditionTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT_CUR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmountCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TO_BASE_QTY_NMRT' ).
    lo_primitive_property->set_edm_name( 'ConditionToBaseQtyNmrtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TO_BASE_QTY_DNMN' ).
    lo_primitive_property->set_edm_name( 'ConditionToBaseQtyDnmntr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT_AMOU' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimitAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_LOWER_LIMIT_RATI' ).
    lo_primitive_property->set_edm_name( 'ConditionLowerLimitRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT_AMOU' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimitAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_UPPER_LIMIT_RATI' ).
    lo_primitive_property->set_edm_name( 'ConditionUpperLimitRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ALTERNATIVE_CURR' ).
    lo_primitive_property->set_edm_name( 'ConditionAlternativeCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_EXCLUSION' ).
    lo_primitive_property->set_edm_name( 'ConditionExclusion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_DELETED' ).
    lo_primitive_property->set_edm_name( 'ConditionIsDeleted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_VALUE_DAYS' ).
    lo_primitive_property->set_edm_name( 'AdditionalValueDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_VALUE_DATE' ).
    lo_primitive_property->set_edm_name( 'FixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_MAX_NUMBER_OF_SALES_O' ).
    lo_primitive_property->set_edm_name( 'CndnMaxNumberOfSalesOrders' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_CONDITION_BASIS_VA' ).
    lo_primitive_property->set_edm_name( 'MinimumConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_CONDITION_BASIS_VA' ).
    lo_primitive_property->set_edm_name( 'MaximumConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'MaximumConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCREMENTAL_SCALE' ).
    lo_primitive_property->set_edm_name( 'IncrementalScale' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_LINE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RELEASE_STATUS' ).
    lo_primitive_property->set_edm_name( 'ConditionReleaseStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_PRICE_APPROVAL_REQUE' ).
    lo_primitive_property->set_edm_name( 'SalesPriceApprovalRequest' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CHANGE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionChangeReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREV_APPROVED_CONDITION_RE' ).
    lo_primitive_property->set_edm_name( 'PrevApprovedConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'ConditionTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_WITHHOLDING_TAX' ).
    lo_primitive_property->set_edm_name( 'ConditionWithholdingTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_EXEMPTION_LICENSE' ).
    lo_primitive_property->set_edm_name( 'TaxExemptionLicense' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LICENSE_GRANT_DATE' ).
    lo_primitive_property->set_edm_name( 'LicenseGrantDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAPOBJECT_NODE_TYPE' ).
    lo_primitive_property->set_edm_name( 'SAPObjectNodeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_SUPL' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdSuplmnt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_SUP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECD_VALI' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecdValidity' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECD_VAL_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CNDN_RECORD_SC' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgCndnRecordScale' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CNDN_RECORD_S_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CONDITION_RECO' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgConditionRecordText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CONDITION_REC_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_sls_prcg_condition_rec_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_PRCG_CONDITION_REC_4'
                                    is_structure              = VALUE tys_a_sls_prcg_condition_rec_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsPrcgConditionRecordTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_PRCG_CONDITION_REC_2' ).
    lo_entity_set->set_edm_name( 'A_SlsPrcgConditionRecordText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TEXT' ).
    lo_primitive_property->set_edm_name( 'ConditionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG_2' ).
    lo_primitive_property->set_edm_name( 'ETAG_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_PRCG_CONDITION_RECO' ).
    lo_navigation_property->set_edm_name( 'to_SlsPrcgConditionRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_PRCG_CONDITION_REC_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.
ENDCLASS.
