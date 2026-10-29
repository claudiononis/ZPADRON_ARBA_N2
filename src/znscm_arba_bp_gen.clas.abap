"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_BUSINESS_PARTNER</em>
CLASS znscm_arba_bp_gen DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type INPUT
        input TYPE string,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">DuplicateCheckResult</p>
      BEGIN OF tys_duplicate_check_result,
        "! BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! BusinessPartnerFullName
        business_partner_full_name TYPE c LENGTH 163,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! City
        city                       TYPE c LENGTH 40,
        "! Country
        country                    TYPE c LENGTH 3,
        "! CountryName
        country_name               TYPE c LENGTH 50,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! Region
        region                     TYPE c LENGTH 3,
        "! RegionName
        region_name                TYPE c LENGTH 20,
        "! MatchRuleName
        match_rule_name            TYPE c LENGTH 30,
        "! MatchScore
        match_score                TYPE c LENGTH 10,
      END OF tys_duplicate_check_result,
      "! <p class="shorttext synchronized">List of DuplicateCheckResult</p>
      tyt_duplicate_check_result TYPE STANDARD TABLE OF tys_duplicate_check_result WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function DuplicateCheck</p>
      "! <em>with the internal name</em> DUPLICATE_CHECK
      BEGIN OF tys_parameters_1,
        "! Input
        input TYPE string,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_AddressEmailAddressType</p>
      BEGIN OF tys_a_address_email_address_ty,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! IsDefaultEmailAddress
        is_default_email_address   TYPE abap_bool,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! SearchEmailAddress
        search_email_address       TYPE c LENGTH 20,
        "! AddressCommunicationRemarkText
        address_communication_rema TYPE c LENGTH 50,
      END OF tys_a_address_email_address_ty,
      "! <p class="shorttext synchronized">List of A_AddressEmailAddressType</p>
      tyt_a_address_email_address_ty TYPE STANDARD TABLE OF tys_a_address_email_address_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_AddressFaxNumberType</p>
      BEGIN OF tys_a_address_fax_number_type,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! IsDefaultFaxNumber
        is_default_fax_number      TYPE abap_bool,
        "! FaxCountry
        fax_country                TYPE c LENGTH 3,
        "! FaxNumber
        fax_number                 TYPE c LENGTH 30,
        "! FaxNumberExtension
        fax_number_extension       TYPE c LENGTH 10,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! AddressCommunicationRemarkText
        address_communication_rema TYPE c LENGTH 50,
      END OF tys_a_address_fax_number_type,
      "! <p class="shorttext synchronized">List of A_AddressFaxNumberType</p>
      tyt_a_address_fax_number_type TYPE STANDARD TABLE OF tys_a_address_fax_number_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_AddressHomePageURLType</p>
      BEGIN OF tys_a_address_home_page_urltyp,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! <em>Key property</em> ValidityStartDate
        validity_start_date        TYPE datn,
        "! <em>Key property</em> IsDefaultURLAddress
        is_default_urladdress      TYPE abap_bool,
        "! SearchURLAddress
        search_urladdress          TYPE c LENGTH 50,
        "! AddressCommunicationRemarkText
        address_communication_rema TYPE c LENGTH 50,
        "! URLFieldLength
        urlfield_length            TYPE int2,
        "! WebsiteURL
        website_url                TYPE string,
      END OF tys_a_address_home_page_urltyp,
      "! <p class="shorttext synchronized">List of A_AddressHomePageURLType</p>
      tyt_a_address_home_page_urltyp TYPE STANDARD TABLE OF tys_a_address_home_page_urltyp WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_AddressPhoneNumberType</p>
      BEGIN OF tys_a_address_phone_number_typ,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! DestinationLocationCountry
        destination_location_count TYPE c LENGTH 3,
        "! IsDefaultPhoneNumber
        is_default_phone_number    TYPE abap_bool,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! PhoneNumberType
        phone_number_type          TYPE c LENGTH 1,
        "! AddressCommunicationRemarkText
        address_communication_rema TYPE c LENGTH 50,
      END OF tys_a_address_phone_number_typ,
      "! <p class="shorttext synchronized">List of A_AddressPhoneNumberType</p>
      tyt_a_address_phone_number_typ TYPE STANDARD TABLE OF tys_a_address_phone_number_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddressIndependentEmailType</p>
      BEGIN OF tys_a_bpaddress_independent__2,
        "! <em>Key property</em> BusinessPartner
        business_partner         TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id               TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                   TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number           TYPE c LENGTH 3,
        "! EmailAddress
        email_address            TYPE c LENGTH 241,
        "! IsDefaultEmailAddress
        is_default_email_address TYPE abap_bool,
        "! ValidityStartDate
        validity_start_date      TYPE datn,
        "! ValidityEndDate
        validity_end_date        TYPE datn,
      END OF tys_a_bpaddress_independent__2,
      "! <p class="shorttext synchronized">List of A_BPAddressIndependentEmailType</p>
      tyt_a_bpaddress_independent__2 TYPE STANDARD TABLE OF tys_a_bpaddress_independent__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddressIndependentFaxType</p>
      BEGIN OF tys_a_bpaddress_independent__3,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! FaxCountry
        fax_country                TYPE c LENGTH 3,
        "! FaxAreaCodeSubscriberNumber
        fax_area_code_subscriber_n TYPE c LENGTH 30,
        "! FaxNumberExtension
        fax_number_extension       TYPE c LENGTH 10,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! IsDefaultFaxNumber
        is_default_fax_number      TYPE abap_bool,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
      END OF tys_a_bpaddress_independent__3,
      "! <p class="shorttext synchronized">List of A_BPAddressIndependentFaxType</p>
      tyt_a_bpaddress_independent__3 TYPE STANDARD TABLE OF tys_a_bpaddress_independent__3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddressIndependentMobileType</p>
      BEGIN OF tys_a_bpaddress_independent__4,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! IsDefaultPhoneNumber
        is_default_phone_number    TYPE abap_bool,
        "! MobilePhoneCountry
        mobile_phone_country       TYPE c LENGTH 3,
        "! MobilePhoneNumber
        mobile_phone_number        TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! PhoneNumberType
        phone_number_type          TYPE c LENGTH 1,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
      END OF tys_a_bpaddress_independent__4,
      "! <p class="shorttext synchronized">List of A_BPAddressIndependentMobileType</p>
      tyt_a_bpaddress_independent__4 TYPE STANDARD TABLE OF tys_a_bpaddress_independent__4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddressIndependentPhoneType</p>
      BEGIN OF tys_a_bpaddress_independent__5,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                     TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! DestinationLocationCountry
        destination_location_count TYPE c LENGTH 3,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! IsDefaultPhoneNumber
        is_default_phone_number    TYPE abap_bool,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! PhoneNumberType
        phone_number_type          TYPE c LENGTH 1,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
      END OF tys_a_bpaddress_independent__5,
      "! <p class="shorttext synchronized">List of A_BPAddressIndependentPhoneType</p>
      tyt_a_bpaddress_independent__5 TYPE STANDARD TABLE OF tys_a_bpaddress_independent__5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddressIndependentWebsiteType</p>
      BEGIN OF tys_a_bpaddress_independent__6,
        "! <em>Key property</em> BusinessPartner
        business_partner      TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id            TYPE c LENGTH 10,
        "! <em>Key property</em> Person
        person                TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number        TYPE c LENGTH 3,
        "! IsDefaultURLAddress
        is_default_urladdress TYPE abap_bool,
        "! URLFieldLength
        urlfield_length       TYPE int4,
        "! WebsiteURL
        website_url           TYPE string,
      END OF tys_a_bpaddress_independent__6,
      "! <p class="shorttext synchronized">List of A_BPAddressIndependentWebsiteType</p>
      tyt_a_bpaddress_independent__6 TYPE STANDARD TABLE OF tys_a_bpaddress_independent__6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPAddrDepdntIntlLocNumberType</p>
      BEGIN OF tys_a_bpaddr_depdnt_intl_loc_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! InternationalLocationNumber1
        international_location_num TYPE c LENGTH 7,
        "! InternationalLocationNumber2
        international_location_n_2 TYPE c LENGTH 5,
        "! InternationalLocationNumber3
        international_location_n_3 TYPE c LENGTH 1,
      END OF tys_a_bpaddr_depdnt_intl_loc_2,
      "! <p class="shorttext synchronized">List of A_BPAddrDepdntIntlLocNumberType</p>
      tyt_a_bpaddr_depdnt_intl_loc_2 TYPE STANDARD TABLE OF tys_a_bpaddr_depdnt_intl_loc_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactPersonEmlAddrType</p>
      BEGIN OF tys_a_bpcontact_person_eml_a_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number      TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person  TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date        TYPE datn,
        "! <em>Key property</em> AddressID
        address_id               TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number           TYPE c LENGTH 3,
        "! IsDefaultEmailAddress
        is_default_email_address TYPE abap_bool,
        "! EmailAddress
        email_address            TYPE c LENGTH 241,
        "! SearchEmailAddress
        search_email_address     TYPE c LENGTH 20,
      END OF tys_a_bpcontact_person_eml_a_2,
      "! <p class="shorttext synchronized">List of A_BPContactPersonEmlAddrType</p>
      tyt_a_bpcontact_person_eml_a_2 TYPE STANDARD TABLE OF tys_a_bpcontact_person_eml_a_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactPersonFaxNmbrType</p>
      BEGIN OF tys_a_bpcontact_person_fax_n_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number        TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company   TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! IsDefaultFaxNumber
        is_default_fax_number      TYPE abap_bool,
        "! FaxCountry
        fax_country                TYPE c LENGTH 3,
        "! FaxAreaCodeSubscriberNumber
        fax_area_code_subscriber_n TYPE c LENGTH 30,
        "! FaxNumberExtension
        fax_number_extension       TYPE c LENGTH 10,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
      END OF tys_a_bpcontact_person_fax_n_2,
      "! <p class="shorttext synchronized">List of A_BPContactPersonFaxNmbrType</p>
      tyt_a_bpcontact_person_fax_n_2 TYPE STANDARD TABLE OF tys_a_bpcontact_person_fax_n_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactPersonMblNmbrType</p>
      BEGIN OF tys_a_bpcontact_person_mbl_n_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number        TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company   TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! IsDefaultPhoneNumber
        is_default_phone_number    TYPE abap_bool,
        "! DestinationLocationCountry
        destination_location_count TYPE c LENGTH 3,
        "! MobilePhoneNumber
        mobile_phone_number        TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! PhoneNumberType
        phone_number_type          TYPE c LENGTH 1,
      END OF tys_a_bpcontact_person_mbl_n_2,
      "! <p class="shorttext synchronized">List of A_BPContactPersonMblNmbrType</p>
      tyt_a_bpcontact_person_mbl_n_2 TYPE STANDARD TABLE OF tys_a_bpcontact_person_mbl_n_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactPersonTelNmbrType</p>
      BEGIN OF tys_a_bpcontact_person_tel_n_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number        TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company   TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number             TYPE c LENGTH 3,
        "! IsDefaultPhoneNumber
        is_default_phone_number    TYPE abap_bool,
        "! DestinationLocationCountry
        destination_location_count TYPE c LENGTH 3,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! PhoneNumberType
        phone_number_type          TYPE c LENGTH 1,
      END OF tys_a_bpcontact_person_tel_n_2,
      "! <p class="shorttext synchronized">List of A_BPContactPersonTelNmbrType</p>
      tyt_a_bpcontact_person_tel_n_2 TYPE STANDARD TABLE OF tys_a_bpcontact_person_tel_n_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactPersonWbsteURLType</p>
      BEGIN OF tys_a_bpcontact_person_wbste_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number      TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person  TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date        TYPE datn,
        "! <em>Key property</em> AddressID
        address_id               TYPE c LENGTH 10,
        "! <em>Key property</em> OrdinalNumber
        ordinal_number           TYPE c LENGTH 3,
        "! IsDefaultURLAddress
        is_default_urladdress    TYPE abap_bool,
        "! SearchURLAddress
        search_urladdress        TYPE c LENGTH 50,
        "! CommNumberIsNotUsed
        comm_number_is_not_used  TYPE abap_bool,
        "! URLFieldLength
        urlfield_length          TYPE int2,
        "! WebsiteURL
        website_url              TYPE string,
      END OF tys_a_bpcontact_person_wbste_2,
      "! <p class="shorttext synchronized">List of A_BPContactPersonWbsteURLType</p>
      tyt_a_bpcontact_person_wbste_2 TYPE STANDARD TABLE OF tys_a_bpcontact_person_wbste_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactToAddressType</p>
      BEGIN OF tys_a_bpcontact_to_address_typ,
        "! <em>Key property</em> RelationshipNumber
        relationship_number        TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company   TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddressNumber
        address_number             TYPE c LENGTH 10,
        "! AdditionalStreetPrefixName
        additional_street_prefix_n TYPE c LENGTH 40,
        "! AdditionalStreetSuffixName
        additional_street_suffix_n TYPE c LENGTH 40,
        "! AddressTimeZone
        address_time_zone          TYPE c LENGTH 6,
        "! CareOfName
        care_of_name               TYPE c LENGTH 40,
        "! CityCode
        city_code                  TYPE c LENGTH 12,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! CompanyPostalCode
        company_postal_code        TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! County
        county                     TYPE c LENGTH 40,
        "! DeliveryServiceNumber
        delivery_service_number    TYPE c LENGTH 10,
        "! DeliveryServiceTypeCode
        delivery_service_type_code TYPE c LENGTH 4,
        "! District
        district                   TYPE c LENGTH 40,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! FullName
        full_name                  TYPE c LENGTH 80,
        "! HomeCityName
        home_city_name             TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! HouseNumberSupplementText
        house_number_supplement_te TYPE c LENGTH 10,
        "! Language
        language                   TYPE c LENGTH 2,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxDeviatingCityName
        pobox_deviating_city_name  TYPE c LENGTH 40,
        "! POBoxDeviatingCountry
        pobox_deviating_country    TYPE c LENGTH 3,
        "! POBoxDeviatingRegion
        pobox_deviating_region     TYPE c LENGTH 3,
        "! POBoxIsWithoutNumber
        pobox_is_without_number    TYPE abap_bool,
        "! POBoxLobbyName
        pobox_lobby_name           TYPE c LENGTH 40,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! Person
        person                     TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! PrfrdCommMediumType
        prfrd_comm_medium_type     TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetPrefixName
        street_prefix_name         TYPE c LENGTH 40,
        "! StreetSuffixName
        street_suffix_name         TYPE c LENGTH 40,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! ContactPersonBuilding
        contact_person_building    TYPE c LENGTH 10,
        "! ContactPersonPrfrdCommMedium
        contact_person_prfrd_comm  TYPE c LENGTH 3,
        "! ContactRelationshipDepartment
        contact_relationship_depar TYPE c LENGTH 40,
        "! ContactRelationshipFunction
        contact_relationship_funct TYPE c LENGTH 40,
        "! CorrespondenceShortName
        correspondence_short_name  TYPE c LENGTH 10,
        "! Floor
        floor                      TYPE c LENGTH 10,
        "! InhouseMail
        inhouse_mail               TYPE c LENGTH 10,
        "! IsDefaultAddress
        is_default_address         TYPE abap_bool,
        "! RoomNumber
        room_number                TYPE c LENGTH 10,
        "! PersonNumber
        person_number              TYPE c LENGTH 10,
      END OF tys_a_bpcontact_to_address_typ,
      "! <p class="shorttext synchronized">List of A_BPContactToAddressType</p>
      tyt_a_bpcontact_to_address_typ TYPE STANDARD TABLE OF tys_a_bpcontact_to_address_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPContactToFuncAndDeptType</p>
      BEGIN OF tys_a_bpcontact_to_func_and__2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number        TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company   TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! ContactPersonAuthorityType
        contact_person_authority_t TYPE c LENGTH 1,
        "! ContactPersonDepartment
        contact_person_department  TYPE c LENGTH 4,
        "! ContactPersonDepartmentName
        contact_person_departmen_2 TYPE c LENGTH 40,
        "! ContactPersonFunction
        contact_person_function    TYPE c LENGTH 4,
        "! ContactPersonFunctionName
        contact_person_function_na TYPE c LENGTH 40,
        "! ContactPersonRemarkText
        contact_person_remark_text TYPE c LENGTH 40,
        "! ContactPersonVIPType
        contact_person_viptype     TYPE c LENGTH 1,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! FaxNumber
        fax_number                 TYPE c LENGTH 30,
        "! FaxNumberExtension
        fax_number_extension       TYPE c LENGTH 10,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneNumberExtension
        phone_number_extension     TYPE c LENGTH 10,
        "! RelationshipCategory
        relationship_category      TYPE c LENGTH 6,
      END OF tys_a_bpcontact_to_func_and__2,
      "! <p class="shorttext synchronized">List of A_BPContactToFuncAndDeptType</p>
      tyt_a_bpcontact_to_func_and__2 TYPE STANDARD TABLE OF tys_a_bpcontact_to_func_and__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPCreditWorthinessType</p>
      BEGIN OF tys_a_bpcredit_worthiness_type,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! BusPartCreditStanding
        bus_part_credit_standing   TYPE c LENGTH 1,
        "! BPCreditStandingStatus
        bpcredit_standing_status   TYPE c LENGTH 1,
        "! CreditRatingAgency
        credit_rating_agency       TYPE c LENGTH 4,
        "! BPCreditStandingComment
        bpcredit_standing_comment  TYPE c LENGTH 50,
        "! BPCreditStandingDate
        bpcredit_standing_date     TYPE datn,
        "! BPCreditStandingRating
        bpcredit_standing_rating   TYPE c LENGTH 3,
        "! BPLegalProceedingStatus
        bplegal_proceeding_status  TYPE c LENGTH 2,
        "! BPLglProceedingInitiationDate
        bplgl_proceeding_initiatio TYPE datn,
        "! BusinessPartnerIsUnderOath
        business_partner_is_under  TYPE abap_bool,
        "! BusinessPartnerOathDate
        business_partner_oath_date TYPE datn,
        "! BusinessPartnerIsBankrupt
        business_partner_is_bankru TYPE abap_bool,
        "! BusinessPartnerBankruptcyDate
        business_partner_bankruptc TYPE datn,
        "! BPForeclosureIsInitiated
        bpforeclosure_is_initiated TYPE abap_bool,
        "! BPForeclosureDate
        bpforeclosure_date         TYPE datn,
        "! BPCrdtWrthnssAccessChkIsActive
        bpcrdt_wrthnss_access_chk  TYPE c LENGTH 1,
      END OF tys_a_bpcredit_worthiness_type,
      "! <p class="shorttext synchronized">List of A_BPCreditWorthinessType</p>
      tyt_a_bpcredit_worthiness_type TYPE STANDARD TABLE OF tys_a_bpcredit_worthiness_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPDataControllerType</p>
      BEGIN OF tys_a_bpdata_controller_type,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> DataController
        data_controller            TYPE c LENGTH 30,
        "! <em>Key property</em> PurposeForPersonalData
        purpose_for_personal_data  TYPE c LENGTH 30,
        "! DataControlAssignmentStatus
        data_control_assignment_st TYPE c LENGTH 1,
        "! BPDataControllerIsDerived
        bpdata_controller_is_deriv TYPE c LENGTH 1,
        "! PurposeDerived
        purpose_derived            TYPE c LENGTH 1,
        "! PurposeType
        purpose_type               TYPE c LENGTH 1,
        "! BusinessPurposeFlag
        business_purpose_flag      TYPE c LENGTH 1,
      END OF tys_a_bpdata_controller_type,
      "! <p class="shorttext synchronized">List of A_BPDataControllerType</p>
      tyt_a_bpdata_controller_type TYPE STANDARD TABLE OF tys_a_bpdata_controller_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPEmploymentType</p>
      BEGIN OF tys_a_bpemployment_type,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BPEmploymentStartDate
        bpemployment_start_date    TYPE datn,
        "! BPEmploymentEndDate
        bpemployment_end_date      TYPE datn,
        "! BPEmploymentStatus
        bpemployment_status        TYPE c LENGTH 2,
        "! BusPartEmplrIndstryCode
        bus_part_emplr_indstry_cod TYPE c LENGTH 10,
        "! BusinessPartnerEmployerName
        business_partner_employer  TYPE c LENGTH 35,
        "! BusinessPartnerOccupationGroup
        business_partner_occupatio TYPE c LENGTH 4,
      END OF tys_a_bpemployment_type,
      "! <p class="shorttext synchronized">List of A_BPEmploymentType</p>
      tyt_a_bpemployment_type TYPE STANDARD TABLE OF tys_a_bpemployment_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPFinancialServicesExtnType</p>
      BEGIN OF tys_a_bpfinancial_services_e_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! BusinessPartnerIsVIP
        business_partner_is_vip    TYPE abap_bool,
        "! TradingPartner
        trading_partner            TYPE c LENGTH 6,
        "! FactoryCalendar
        factory_calendar           TYPE c LENGTH 2,
        "! BusinessPartnerOfficeCountry
        business_partner_office_co TYPE c LENGTH 3,
        "! BusinessPartnerOfficeRegion
        business_partner_office_re TYPE c LENGTH 3,
        "! BPRegisteredOfficeName
        bpregistered_office_name   TYPE c LENGTH 35,
        "! BPBalanceSheetCurrency
        bpbalance_sheet_currency   TYPE c LENGTH 5,
        "! BPLastCptlIncrAmtInBalShtCrcy
        bplast_cptl_incr_amt_in_ba TYPE p LENGTH 9 DECIMALS 3,
        "! BPLastCapitalIncreaseYear
        bplast_capital_increase_ye TYPE c LENGTH 4,
        "! BPBalanceSheetDisplayType
        bpbalance_sheet_display_ty TYPE c LENGTH 1,
        "! BusinessPartnerCitizenship
        business_partner_citizensh TYPE c LENGTH 3,
        "! BPMaritalPropertyRegime
        bpmarital_property_regime  TYPE c LENGTH 2,
        "! BusinessPartnerIncomeCurrency
        business_partner_income_cu TYPE c LENGTH 5,
        "! BPNumberOfChildren
        bpnumber_of_children       TYPE p LENGTH 2 DECIMALS 0,
        "! BPNumberOfHouseholdMembers
        bpnumber_of_household_memb TYPE p LENGTH 2 DECIMALS 0,
        "! BPAnnualNetIncAmtInIncomeCrcy
        bpannual_net_inc_amt_in_in TYPE p LENGTH 9 DECIMALS 3,
        "! BPMonthlyNetIncAmtInIncomeCrcy
        bpmonthly_net_inc_amt_in_i TYPE p LENGTH 9 DECIMALS 3,
        "! BPAnnualNetIncomeYear
        bpannual_net_income_year   TYPE c LENGTH 4,
        "! BPMonthlyNetIncomeMonth
        bpmonthly_net_income_month TYPE c LENGTH 2,
        "! BPMonthlyNetIncomeYear
        bpmonthly_net_income_year  TYPE c LENGTH 4,
        "! BPPlaceOfDeathName
        bpplace_of_death_name      TYPE c LENGTH 40,
        "! CustomerIsUnwanted
        customer_is_unwanted       TYPE abap_bool,
        "! UndesirabilityReason
        undesirability_reason      TYPE c LENGTH 2,
        "! UndesirabilityComment
        undesirability_comment     TYPE c LENGTH 35,
        "! LastCustomerContactDate
        last_customer_contact_date TYPE datn,
        "! BPGroupingCharacter
        bpgrouping_character       TYPE c LENGTH 10,
        "! BPLetterSalutation
        bpletter_salutation        TYPE c LENGTH 2,
        "! BusinessPartnerTargetGroup
        business_partner_target_gr TYPE c LENGTH 4,
        "! BusinessPartnerEmployeeGroup
        business_partner_employee  TYPE c LENGTH 4,
        "! BusinessPartnerIsEmployee
        business_partner_is_employ TYPE abap_bool,
        "! BPTermnBusRelationsBankDate
        bptermn_bus_relations_bank TYPE datn,
      END OF tys_a_bpfinancial_services_e_2,
      "! <p class="shorttext synchronized">List of A_BPFinancialServicesExtnType</p>
      tyt_a_bpfinancial_services_e_2 TYPE STANDARD TABLE OF tys_a_bpfinancial_services_e_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPFinancialServicesReportingType</p>
      BEGIN OF tys_a_bpfinancial_services_r_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! BPIsNonResident
        bpis_non_resident          TYPE abap_bool,
        "! BPNonResidencyStartDate
        bpnon_residency_start_date TYPE datn,
        "! BPIsMultimillionLoanRecipient
        bpis_multimillion_loan_rec TYPE abap_bool,
        "! BPLoanReportingBorrowerNumber
        bploan_reporting_borrower  TYPE c LENGTH 8,
        "! BPLoanRptgBorrowerEntityNumber
        bploan_rptg_borrower_entit TYPE c LENGTH 8,
        "! BPCreditStandingReview
        bpcredit_standing_review   TYPE c LENGTH 2,
        "! BPCreditStandingReviewDate
        bpcredit_standing_review_d TYPE datn,
        "! BusinessPartnerLoanToManager
        business_partner_loan_to_m TYPE c LENGTH 2,
        "! BPCompanyRelationship
        bpcompany_relationship     TYPE c LENGTH 1,
        "! BPLoanReportingCreditorNumber
        bploan_reporting_creditor  TYPE c LENGTH 8,
        "! BPOeNBIdentNumber
        bpoe_nbident_number        TYPE c LENGTH 11,
        "! BPOeNBTargetGroup
        bpoe_nbtarget_group        TYPE c LENGTH 2,
        "! BPOeNBIdentNumberAssigned
        bpoe_nbident_number_assign TYPE c LENGTH 1,
        "! BPOeNBInstituteNumber
        bpoe_nbinstitute_number    TYPE c LENGTH 7,
        "! BusinessPartnerIsOeNBInstitute
        business_partner_is_oe_nbi TYPE abap_bool,
        "! BusinessPartnerGroup
        business_partner_group     TYPE c LENGTH 15,
        "! BPGroupAssignmentCategory
        bpgroup_assignment_categor TYPE c LENGTH 1,
        "! BusinessPartnerGroupName
        business_partner_group_nam TYPE c LENGTH 50,
        "! BusinessPartnerLegalEntity
        business_partner_legal_ent TYPE c LENGTH 2,
        "! BPGerAstRglnRestrictedAstQuota
        bpger_ast_rgln_restricted  TYPE c LENGTH 1,
        "! BusinessPartnerDebtorGroup
        business_partner_debtor_gr TYPE c LENGTH 1,
        "! BusinessPartnerBusinessPurpose
        business_partner_business  TYPE c LENGTH 2,
        "! BusinessPartnerRiskGroup
        business_partner_risk_grou TYPE c LENGTH 1,
        "! BPRiskGroupingDate
        bprisk_grouping_date       TYPE datn,
        "! BPHasGroupAffiliation
        bphas_group_affiliation    TYPE abap_bool,
        "! BPIsMonetaryFinInstitution
        bpis_monetary_fin_institut TYPE abap_bool,
        "! BPCrdtStandingReviewIsRequired
        bpcrdt_standing_review_is  TYPE abap_bool,
        "! BPLoanMonitoringIsRequired
        bploan_monitoring_is_requi TYPE abap_bool,
        "! BPHasCreditingRelief
        bphas_crediting_relief     TYPE abap_bool,
        "! BPInvestInRstrcdAstIsAuthzd
        bpinvest_in_rstrcd_ast_is  TYPE abap_bool,
        "! BPCentralBankCountryRegion
        bpcentral_bank_country_reg TYPE c LENGTH 4,
      END OF tys_a_bpfinancial_services_r_2,
      "! <p class="shorttext synchronized">List of A_BPFinancialServicesReportingType</p>
      tyt_a_bpfinancial_services_r_2 TYPE STANDARD TABLE OF tys_a_bpfinancial_services_r_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPFiscalYearInformationType</p>
      BEGIN OF tys_a_bpfiscal_year_informat_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerFiscalYear
        business_partner_fiscal_ye TYPE c LENGTH 4,
        "! BPBalanceSheetCurrency
        bpbalance_sheet_currency   TYPE c LENGTH 5,
        "! BPAnnualStockholderMeetingDate
        bpannual_stockholder_meeti TYPE datn,
        "! BPFiscalYearStartDate
        bpfiscal_year_start_date   TYPE datn,
        "! BPFiscalYearEndDate
        bpfiscal_year_end_date     TYPE datn,
        "! BPFiscalYearIsClosed
        bpfiscal_year_is_closed    TYPE abap_bool,
        "! BPFiscalYearClosingDate
        bpfiscal_year_closing_date TYPE datn,
        "! BPFsclYrCnsldtdFinStatementDte
        bpfscl_yr_cnsldtd_fin_stat TYPE datn,
        "! BPCapitalStockAmtInBalShtCrcy
        bpcapital_stock_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! BPIssdStockCptlAmtInBalShtCrcy
        bpissd_stock_cptl_amt_in_b TYPE p LENGTH 9 DECIMALS 3,
        "! BPPartcipnCertAmtInBalShtCrcy
        bppartcipn_cert_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! BPEquityCapitalAmtInBalShtCrcy
        bpequity_capital_amt_in_ba TYPE p LENGTH 9 DECIMALS 3,
        "! BPGrossPremiumAmtInBalShtCrcy
        bpgross_premium_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! BPNetPremiumAmtInBalShtCrcy
        bpnet_premium_amt_in_bal_s TYPE p LENGTH 9 DECIMALS 3,
        "! BPAnnualSalesAmtInBalShtCrcy
        bpannual_sales_amt_in_bal  TYPE p LENGTH 9 DECIMALS 3,
        "! BPAnnualNetIncAmtInBalShtCrcy
        bpannual_net_inc_amt_in_ba TYPE p LENGTH 9 DECIMALS 3,
        "! BPDividendDistrAmtInBalShtCrcy
        bpdividend_distr_amt_in_ba TYPE p LENGTH 9 DECIMALS 3,
        "! BPDebtRatioInYears
        bpdebt_ratio_in_years      TYPE p LENGTH 4 DECIMALS 3,
        "! BPAnnualPnLAmtInBalShtCrcy
        bpannual_pn_lamt_in_bal_sh TYPE p LENGTH 9 DECIMALS 3,
        "! BPBalSheetTotalAmtInBalShtCrcy
        bpbal_sheet_total_amt_in_b TYPE p LENGTH 9 DECIMALS 3,
        "! BPNumberOfEmployees
        bpnumber_of_employees      TYPE c LENGTH 7,
        "! BPCptlReserveAmtInBalShtCrcy
        bpcptl_reserve_amt_in_bal  TYPE p LENGTH 9 DECIMALS 3,
        "! BPLglRevnRsrvAmtInBalShtCrcy
        bplgl_revn_rsrv_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! RevnRsrvOwnStkAmtInBalShtCrcy
        revn_rsrv_own_stk_amt_in_b TYPE p LENGTH 9 DECIMALS 3,
        "! BPStatryReserveAmtInBalShtCrcy
        bpstatry_reserve_amt_in_ba TYPE p LENGTH 9 DECIMALS 3,
        "! BPOthRevnRsrvAmtInBalShtCrcy
        bpoth_revn_rsrv_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! BPPnLCarryfwdAmtInBalShtCrcy
        bppn_lcarryfwd_amt_in_bal  TYPE p LENGTH 9 DECIMALS 3,
        "! BPSuborddLbltyAmtInBalShtCrcy
        bpsubordd_lblty_amt_in_bal TYPE p LENGTH 9 DECIMALS 3,
        "! BPRetOnTotalCptlEmpldInPercent
        bpret_on_total_cptl_empld  TYPE p LENGTH 3 DECIMALS 2,
        "! BPDebtClearancePeriodInYears
        bpdebt_clearance_period_in TYPE p LENGTH 3 DECIMALS 2,
        "! BPFinancingCoeffInPercent
        bpfinancing_coeff_in_perce TYPE p LENGTH 3 DECIMALS 2,
        "! BPEquityRatioInPercent
        bpequity_ratio_in_percent  TYPE p LENGTH 3 DECIMALS 2,
      END OF tys_a_bpfiscal_year_informat_2,
      "! <p class="shorttext synchronized">List of A_BPFiscalYearInformationType</p>
      tyt_a_bpfiscal_year_informat_2 TYPE STANDARD TABLE OF tys_a_bpfiscal_year_informat_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPIntlAddressVersionType</p>
      BEGIN OF tys_a_bpintl_address_version_t,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! AddressIDByExternalSystem
        address_idby_external_syst TYPE c LENGTH 20,
        "! AddressPersonID
        address_person_id          TYPE c LENGTH 10,
        "! AddressSearchTerm1
        address_search_term_1      TYPE c LENGTH 20,
        "! AddressSearchTerm2
        address_search_term_2      TYPE c LENGTH 20,
        "! AddressTimeZone
        address_time_zone          TYPE c LENGTH 6,
        "! CareOfName
        care_of_name               TYPE c LENGTH 40,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! CityNumber
        city_number                TYPE c LENGTH 12,
        "! CompanyPostalCode
        company_postal_code        TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! DeliveryServiceNumber
        delivery_service_number    TYPE c LENGTH 10,
        "! DeliveryServiceTypeCode
        delivery_service_type_code TYPE c LENGTH 4,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! HouseNumberSupplementText
        house_number_supplement_te TYPE c LENGTH 10,
        "! Language
        language                   TYPE c LENGTH 2,
        "! OrganizationName1
        organization_name_1        TYPE c LENGTH 40,
        "! OrganizationName2
        organization_name_2        TYPE c LENGTH 40,
        "! OrganizationName3
        organization_name_3        TYPE c LENGTH 40,
        "! OrganizationName4
        organization_name_4        TYPE c LENGTH 40,
        "! PersonFamilyName
        person_family_name         TYPE c LENGTH 40,
        "! PersonGivenName
        person_given_name          TYPE c LENGTH 40,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxDeviatingCityName
        pobox_deviating_city_name  TYPE c LENGTH 40,
        "! POBoxDeviatingCountry
        pobox_deviating_country    TYPE c LENGTH 3,
        "! POBoxDeviatingRegion
        pobox_deviating_region     TYPE c LENGTH 3,
        "! POBoxIsWithoutNumber
        pobox_is_without_number    TYPE abap_bool,
        "! POBoxLobbyName
        pobox_lobby_name           TYPE c LENGTH 40,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! PrfrdCommMediumType
        prfrd_comm_medium_type     TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! SecondaryRegion
        secondary_region           TYPE c LENGTH 8,
        "! SecondaryRegionName
        secondary_region_name      TYPE c LENGTH 40,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TertiaryRegion
        tertiary_region            TYPE c LENGTH 8,
        "! TertiaryRegionName
        tertiary_region_name       TYPE c LENGTH 40,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! VillageName
        village_name               TYPE c LENGTH 40,
      END OF tys_a_bpintl_address_version_t,
      "! <p class="shorttext synchronized">List of A_BPIntlAddressVersionType</p>
      tyt_a_bpintl_address_version_t TYPE STANDARD TABLE OF tys_a_bpintl_address_version_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BPRelationshipType</p>
      BEGIN OF tys_a_bprelationship_type,
        "! <em>Key property</em> RelationshipNumber
        relationship_number      TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartner1
        business_partner_1       TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartner2
        business_partner_2       TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date        TYPE datn,
        "! ValidityStartDate
        validity_start_date      TYPE datn,
        "! IsStandardRelationship
        is_standard_relationship TYPE abap_bool,
        "! RelationshipCategory
        relationship_category    TYPE c LENGTH 6,
        "! BPRelationshipType
        bprelationship_type      TYPE c LENGTH 4,
        "! CreatedByUser
        created_by_user          TYPE c LENGTH 12,
        "! CreationDate
        creation_date            TYPE datn,
        "! CreationTime
        creation_time            TYPE timn,
        "! LastChangedByUser
        last_changed_by_user     TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date         TYPE datn,
        "! LastChangeTime
        last_change_time         TYPE timn,
      END OF tys_a_bprelationship_type,
      "! <p class="shorttext synchronized">List of A_BPRelationshipType</p>
      tyt_a_bprelationship_type TYPE STANDARD TABLE OF tys_a_bprelationship_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerAddressType</p>
      BEGIN OF tys_a_business_partner_addre_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! ValidityStartDate
        validity_start_date        TYPE timestamp,
        "! ValidityEndDate
        validity_end_date          TYPE timestamp,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! AddressUUID
        address_uuid               TYPE sysuuid_x16,
        "! AdditionalStreetPrefixName
        additional_street_prefix_n TYPE c LENGTH 40,
        "! AdditionalStreetSuffixName
        additional_street_suffix_n TYPE c LENGTH 40,
        "! AddressTimeZone
        address_time_zone          TYPE c LENGTH 6,
        "! CareOfName
        care_of_name               TYPE c LENGTH 40,
        "! CityCode
        city_code                  TYPE c LENGTH 12,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! CompanyPostalCode
        company_postal_code        TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! County
        county                     TYPE c LENGTH 40,
        "! DeliveryServiceNumber
        delivery_service_number    TYPE c LENGTH 10,
        "! DeliveryServiceTypeCode
        delivery_service_type_code TYPE c LENGTH 4,
        "! District
        district                   TYPE c LENGTH 40,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! FullName
        full_name                  TYPE c LENGTH 80,
        "! HomeCityName
        home_city_name             TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! HouseNumberSupplementText
        house_number_supplement_te TYPE c LENGTH 10,
        "! Language
        language                   TYPE c LENGTH 2,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxDeviatingCityName
        pobox_deviating_city_name  TYPE c LENGTH 40,
        "! POBoxDeviatingCountry
        pobox_deviating_country    TYPE c LENGTH 3,
        "! POBoxDeviatingRegion
        pobox_deviating_region     TYPE c LENGTH 3,
        "! POBoxIsWithoutNumber
        pobox_is_without_number    TYPE abap_bool,
        "! POBoxLobbyName
        pobox_lobby_name           TYPE c LENGTH 40,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! Person
        person                     TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! PrfrdCommMediumType
        prfrd_comm_medium_type     TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetPrefixName
        street_prefix_name         TYPE c LENGTH 40,
        "! StreetSuffixName
        street_suffix_name         TYPE c LENGTH 40,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! AddressIDByExternalSystem
        address_idby_external_syst TYPE c LENGTH 20,
        "! CountyCode
        county_code                TYPE c LENGTH 8,
        "! TownshipCode
        township_code              TYPE c LENGTH 8,
        "! TownshipName
        township_name              TYPE c LENGTH 40,
        "! Building
        building                   TYPE c LENGTH 20,
        "! Floor
        floor                      TYPE c LENGTH 10,
        "! RoomNumber
        room_number                TYPE c LENGTH 10,
      END OF tys_a_business_partner_addre_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerAddressType</p>
      tyt_a_business_partner_addre_2 TYPE STANDARD TABLE OF tys_a_business_partner_addre_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerAliasType</p>
      BEGIN OF tys_a_business_partner_alias_t,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BPAliasPositionNumber
        bpalias_position_number    TYPE c LENGTH 3,
        "! BusinessPartnerAliasName
        business_partner_alias_nam TYPE c LENGTH 80,
      END OF tys_a_business_partner_alias_t,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerAliasType</p>
      tyt_a_business_partner_alias_t TYPE STANDARD TABLE OF tys_a_business_partner_alias_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerBankType</p>
      BEGIN OF tys_a_business_partner_bank_ty,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BankIdentification
        bank_identification        TYPE c LENGTH 4,
        "! BankCountryKey
        bank_country_key           TYPE c LENGTH 3,
        "! BankName
        bank_name                  TYPE c LENGTH 60,
        "! BankNumber
        bank_number                TYPE c LENGTH 15,
        "! SWIFTCode
        swiftcode                  TYPE c LENGTH 11,
        "! BankControlKey
        bank_control_key           TYPE c LENGTH 2,
        "! BankAccountHolderName
        bank_account_holder_name   TYPE c LENGTH 60,
        "! BankAccountName
        bank_account_name          TYPE c LENGTH 40,
        "! ValidityStartDate
        validity_start_date        TYPE timestamp,
        "! ValidityEndDate
        validity_end_date          TYPE timestamp,
        "! IBAN
        iban                       TYPE c LENGTH 34,
        "! IBANValidityStartDate
        ibanvalidity_start_date    TYPE datn,
        "! BankAccount
        bank_account               TYPE c LENGTH 18,
        "! BankAccountReferenceText
        bank_account_reference_tex TYPE c LENGTH 20,
        "! CollectionAuthInd
        collection_auth_ind        TYPE abap_bool,
        "! CityName
        city_name                  TYPE c LENGTH 35,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
      END OF tys_a_business_partner_bank_ty,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerBankType</p>
      tyt_a_business_partner_bank_ty TYPE STANDARD TABLE OF tys_a_business_partner_bank_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerContactType</p>
      BEGIN OF tys_a_business_partner_conta_2,
        "! <em>Key property</em> RelationshipNumber
        relationship_number      TYPE c LENGTH 12,
        "! <em>Key property</em> BusinessPartnerCompany
        business_partner_company TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerPerson
        business_partner_person  TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date        TYPE datn,
        "! ValidityStartDate
        validity_start_date      TYPE datn,
        "! IsStandardRelationship
        is_standard_relationship TYPE abap_bool,
        "! RelationshipCategory
        relationship_category    TYPE c LENGTH 6,
      END OF tys_a_business_partner_conta_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerContactType</p>
      tyt_a_business_partner_conta_2 TYPE STANDARD TABLE OF tys_a_business_partner_conta_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerIsBankType</p>
      BEGIN OF tys_a_business_partner_is_ba_2,
        "! <em>Key property</em> BusinessPartner
        business_partner  TYPE c LENGTH 10,
        "! BankKey
        bank_key          TYPE c LENGTH 15,
        "! BankCountry
        bank_country      TYPE c LENGTH 3,
        "! BPMinimumReserve
        bpminimum_reserve TYPE c LENGTH 1,
      END OF tys_a_business_partner_is_ba_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerIsBankType</p>
      tyt_a_business_partner_is_ba_2 TYPE STANDARD TABLE OF tys_a_business_partner_is_ba_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerPaymentCardType</p>
      BEGIN OF tys_a_business_partner_payme_2,
        "! <em>Key property</em> BusinessPartner
        business_partner   TYPE c LENGTH 10,
        "! <em>Key property</em> PaymentCardID
        payment_card_id    TYPE c LENGTH 6,
        "! <em>Key property</em> PaymentCardType
        payment_card_type  TYPE c LENGTH 4,
        "! <em>Key property</em> CardNumber
        card_number        TYPE c LENGTH 25,
        "! IsStandardCard
        is_standard_card   TYPE abap_bool,
        "! CardDescription
        card_description   TYPE c LENGTH 40,
        "! ValidityDate
        validity_date      TYPE datn,
        "! ValidityEndDate
        validity_end_date  TYPE datn,
        "! CardHolder
        card_holder        TYPE c LENGTH 40,
        "! CardIssuingBank
        card_issuing_bank  TYPE c LENGTH 40,
        "! CardIssueDate
        card_issue_date    TYPE datn,
        "! PaymentCardLock
        payment_card_lock  TYPE c LENGTH 2,
        "! MaskedCardNumber
        masked_card_number TYPE c LENGTH 25,
      END OF tys_a_business_partner_payme_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerPaymentCardType</p>
      tyt_a_business_partner_payme_2 TYPE STANDARD TABLE OF tys_a_business_partner_payme_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerRatingType</p>
      BEGIN OF tys_a_business_partner_ratin_2,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerRatingProcedure
        business_partner_rating_pr TYPE c LENGTH 10,
        "! <em>Key property</em> BPRatingValidityEndDate
        bprating_validity_end_date TYPE datn,
        "! BusinessPartnerRatingGrade
        business_partner_rating_gr TYPE c LENGTH 10,
        "! BusinessPartnerRatingTrend
        business_partner_rating_tr TYPE c LENGTH 2,
        "! BPRatingValidityStartDate
        bprating_validity_start_da TYPE datn,
        "! BPRatingCreationDate
        bprating_creation_date     TYPE datn,
        "! BusinessPartnerRatingComment
        business_partner_rating_co TYPE c LENGTH 60,
        "! BusinessPartnerRatingIsAllowed
        business_partner_rating_is TYPE abap_bool,
        "! BPRatingIsValidOnKeyDate
        bprating_is_valid_on_key_d TYPE abap_bool,
        "! BusinessPartnerRatingKeyDate
        business_partner_rating_ke TYPE datn,
        "! BusinessPartnerRatingIsExpired
        business_partner_rating__2 TYPE abap_bool,
        "! BPRatingLongComment
        bprating_long_comment      TYPE c LENGTH 255,
      END OF tys_a_business_partner_ratin_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerRatingType</p>
      tyt_a_business_partner_ratin_2 TYPE STANDARD TABLE OF tys_a_business_partner_ratin_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerRoleType</p>
      BEGIN OF tys_a_business_partner_role_ty,
        "! <em>Key property</em> BusinessPartner
        business_partner      TYPE c LENGTH 10,
        "! <em>Key property</em> BusinessPartnerRole
        business_partner_role TYPE c LENGTH 6,
        "! ValidFrom
        valid_from            TYPE timestamp,
        "! ValidTo
        valid_to              TYPE timestamp,
        "! AuthorizationGroup
        authorization_group   TYPE c LENGTH 4,
      END OF tys_a_business_partner_role_ty,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerRoleType</p>
      tyt_a_business_partner_role_ty TYPE STANDARD TABLE OF tys_a_business_partner_role_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerTaxNumberType</p>
      BEGIN OF tys_a_business_partner_tax_n_2,
        "! <em>Key property</em> BusinessPartner
        business_partner    TYPE c LENGTH 10,
        "! <em>Key property</em> BPTaxType
        bptax_type          TYPE c LENGTH 4,
        "! BPTaxNumber
        bptax_number        TYPE c LENGTH 20,
        "! BPTaxLongNumber
        bptax_long_number   TYPE c LENGTH 60,
        "! AuthorizationGroup
        authorization_group TYPE c LENGTH 4,
      END OF tys_a_business_partner_tax_n_2,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerTaxNumberType</p>
      tyt_a_business_partner_tax_n_2 TYPE STANDARD TABLE OF tys_a_business_partner_tax_n_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusinessPartnerType</p>
      BEGIN OF tys_a_business_partner_type,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! AcademicTitle
        academic_title             TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! BusinessPartnerCategory
        business_partner_category  TYPE c LENGTH 1,
        "! BusinessPartnerFullName
        business_partner_full_name TYPE c LENGTH 81,
        "! BusinessPartnerGrouping
        business_partner_grouping  TYPE c LENGTH 4,
        "! BusinessPartnerName
        business_partner_name      TYPE c LENGTH 81,
        "! BusinessPartnerUUID
        business_partner_uuid      TYPE sysuuid_x16,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! FirstName
        first_name                 TYPE c LENGTH 40,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! Industry
        industry                   TYPE c LENGTH 10,
        "! InternationalLocationNumber1
        international_location_num TYPE c LENGTH 7,
        "! InternationalLocationNumber2
        international_location_n_2 TYPE c LENGTH 5,
        "! IsFemale
        is_female                  TYPE abap_bool,
        "! IsMale
        is_male                    TYPE abap_bool,
        "! IsNaturalPerson
        is_natural_person          TYPE c LENGTH 1,
        "! IsSexUnknown
        is_sex_unknown             TYPE abap_bool,
        "! GenderCodeName
        gender_code_name           TYPE c LENGTH 1,
        "! Language
        language                   TYPE c LENGTH 2,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangeTime
        last_change_time           TYPE timn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastName
        last_name                  TYPE c LENGTH 40,
        "! LegalForm
        legal_form                 TYPE c LENGTH 2,
        "! OrganizationBPName1
        organization_bpname_1      TYPE c LENGTH 40,
        "! OrganizationBPName2
        organization_bpname_2      TYPE c LENGTH 40,
        "! OrganizationBPName3
        organization_bpname_3      TYPE c LENGTH 40,
        "! OrganizationBPName4
        organization_bpname_4      TYPE c LENGTH 40,
        "! OrganizationFoundationDate
        organization_foundation_da TYPE datn,
        "! OrganizationLiquidationDate
        organization_liquidation_d TYPE datn,
        "! SearchTerm1
        search_term_1              TYPE c LENGTH 20,
        "! SearchTerm2
        search_term_2              TYPE c LENGTH 20,
        "! AdditionalLastName
        additional_last_name       TYPE c LENGTH 40,
        "! BirthDate
        birth_date                 TYPE datn,
        "! BusinessPartnerBirthDateStatus
        business_partner_birth_dat TYPE c LENGTH 1,
        "! BusinessPartnerBirthplaceName
        business_partner_birthplac TYPE c LENGTH 40,
        "! BusinessPartnerDeathDate
        business_partner_death_dat TYPE datn,
        "! BusinessPartnerIsBlocked
        business_partner_is_blocke TYPE abap_bool,
        "! BusinessPartnerType
        business_partner_type      TYPE c LENGTH 4,
        "! ETag
        etag                       TYPE c LENGTH 26,
        "! GroupBusinessPartnerName1
        group_business_partner_nam TYPE c LENGTH 40,
        "! GroupBusinessPartnerName2
        group_business_partner_n_2 TYPE c LENGTH 40,
        "! IndependentAddressID
        independent_address_id     TYPE c LENGTH 10,
        "! InternationalLocationNumber3
        international_location_n_3 TYPE c LENGTH 1,
        "! MiddleName
        middle_name                TYPE c LENGTH 40,
        "! NameCountry
        name_country               TYPE c LENGTH 3,
        "! NameFormat
        name_format                TYPE c LENGTH 2,
        "! PersonFullName
        person_full_name           TYPE c LENGTH 80,
        "! PersonNumber
        person_number              TYPE c LENGTH 10,
        "! IsMarkedForArchiving
        is_marked_for_archiving    TYPE abap_bool,
        "! BusinessPartnerIDByExtSystem
        business_partner_idby_ext  TYPE c LENGTH 20,
        "! BusinessPartnerPrintFormat
        business_partner_print_for TYPE c LENGTH 1,
        "! BusinessPartnerOccupation
        business_partner_occupatio TYPE c LENGTH 4,
        "! BusPartMaritalStatus
        bus_part_marital_status    TYPE c LENGTH 1,
        "! BusPartNationality
        bus_part_nationality       TYPE c LENGTH 3,
        "! BusinessPartnerBirthName
        business_partner_birth_nam TYPE c LENGTH 40,
        "! BusinessPartnerSupplementName
        business_partner_supplemen TYPE c LENGTH 4,
        "! NaturalPersonEmployerName
        natural_person_employer_na TYPE c LENGTH 35,
        "! LastNamePrefix
        last_name_prefix           TYPE c LENGTH 4,
        "! LastNameSecondPrefix
        last_name_second_prefix    TYPE c LENGTH 4,
        "! Initials
        initials                   TYPE c LENGTH 10,
        "! BPDataControllerIsNotRequired
        bpdata_controller_is_not_r TYPE abap_bool,
        "! TradingPartner
        trading_partner            TYPE c LENGTH 6,
        "! YY1_RelevantepFCE_bus
        yy_1_relevantep_fce_bus    TYPE abap_bool,
        "! YY1_RelevantepFCE_busF
        yy_1_relevantep_fce_bus_f  TYPE int1,
      END OF tys_a_business_partner_type,
      "! <p class="shorttext synchronized">List of A_BusinessPartnerType</p>
      tyt_a_business_partner_type TYPE STANDARD TABLE OF tys_a_business_partner_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusPartAddrDepdntTaxNmbrType</p>
      BEGIN OF tys_a_bus_part_addr_depdnt_t_2,
        "! <em>Key property</em> BusinessPartner
        business_partner    TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id          TYPE c LENGTH 10,
        "! <em>Key property</em> BPTaxType
        bptax_type          TYPE c LENGTH 4,
        "! BPTaxNumber
        bptax_number        TYPE c LENGTH 20,
        "! BPTaxLongNumber
        bptax_long_number   TYPE c LENGTH 60,
        "! AuthorizationGroup
        authorization_group TYPE c LENGTH 4,
      END OF tys_a_bus_part_addr_depdnt_t_2,
      "! <p class="shorttext synchronized">List of A_BusPartAddrDepdntTaxNmbrType</p>
      tyt_a_bus_part_addr_depdnt_t_2 TYPE STANDARD TABLE OF tys_a_bus_part_addr_depdnt_t_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BuPaAddressUsageType</p>
      BEGIN OF tys_a_bu_pa_address_usage_type,
        "! <em>Key property</em> BusinessPartner
        business_partner    TYPE c LENGTH 10,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date   TYPE timestamp,
        "! <em>Key property</em> AddressUsage
        address_usage       TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id          TYPE c LENGTH 10,
        "! ValidityStartDate
        validity_start_date TYPE timestamp,
        "! StandardUsage
        standard_usage      TYPE abap_bool,
        "! AuthorizationGroup
        authorization_group TYPE c LENGTH 4,
      END OF tys_a_bu_pa_address_usage_type,
      "! <p class="shorttext synchronized">List of A_BuPaAddressUsageType</p>
      tyt_a_bu_pa_address_usage_type TYPE STANDARD TABLE OF tys_a_bu_pa_address_usage_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BuPaIdentificationType</p>
      BEGIN OF tys_a_bu_pa_identification_typ,
        "! <em>Key property</em> BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! <em>Key property</em> BPIdentificationType
        bpidentification_type      TYPE c LENGTH 6,
        "! <em>Key property</em> BPIdentificationNumber
        bpidentification_number    TYPE c LENGTH 60,
        "! BPIdnNmbrIssuingInstitute
        bpidn_nmbr_issuing_institu TYPE c LENGTH 40,
        "! BPIdentificationEntryDate
        bpidentification_entry_dat TYPE datn,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
      END OF tys_a_bu_pa_identification_typ,
      "! <p class="shorttext synchronized">List of A_BuPaIdentificationType</p>
      tyt_a_bu_pa_identification_typ TYPE STANDARD TABLE OF tys_a_bu_pa_identification_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BuPaIndustryType</p>
      BEGIN OF tys_a_bu_pa_industry_type,
        "! <em>Key property</em> IndustrySector
        industry_sector          TYPE c LENGTH 10,
        "! <em>Key property</em> IndustrySystemType
        industry_system_type     TYPE c LENGTH 4,
        "! <em>Key property</em> BusinessPartner
        business_partner         TYPE c LENGTH 10,
        "! IsStandardIndustry
        is_standard_industry     TYPE c LENGTH 1,
        "! IndustryKeyDescription
        industry_key_description TYPE c LENGTH 100,
      END OF tys_a_bu_pa_industry_type,
      "! <p class="shorttext synchronized">List of A_BuPaIndustryType</p>
      tyt_a_bu_pa_industry_type TYPE STANDARD TABLE OF tys_a_bu_pa_industry_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerCompanyTextType</p>
      BEGIN OF tys_a_customer_company_text_ty,
        "! <em>Key property</em> Customer
        customer     TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language     TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id TYPE c LENGTH 4,
        "! LongText
        long_text    TYPE string,
      END OF tys_a_customer_company_text_ty,
      "! <p class="shorttext synchronized">List of A_CustomerCompanyTextType</p>
      tyt_a_customer_company_text_ty TYPE STANDARD TABLE OF tys_a_customer_company_text_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerCompanyType</p>
      BEGIN OF tys_a_customer_company_type,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! APARToleranceGroup
        apartolerance_group        TYPE c LENGTH 4,
        "! AccountByCustomer
        account_by_customer        TYPE c LENGTH 12,
        "! AccountingClerk
        accounting_clerk           TYPE c LENGTH 2,
        "! AccountingClerkFaxNumber
        accounting_clerk_fax_numbe TYPE c LENGTH 31,
        "! AccountingClerkInternetAddress
        accounting_clerk_internet  TYPE c LENGTH 130,
        "! AccountingClerkPhoneNumber
        accounting_clerk_phone_num TYPE c LENGTH 30,
        "! AlternativePayerAccount
        alternative_payer_account  TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! CollectiveInvoiceVariant
        collective_invoice_variant TYPE c LENGTH 1,
        "! CustomerAccountNote
        customer_account_note      TYPE c LENGTH 30,
        "! CustomerHeadOffice
        customer_head_office       TYPE c LENGTH 10,
        "! CustomerSupplierClearingIsUsed
        customer_supplier_clearing TYPE abap_bool,
        "! HouseBank
        house_bank                 TYPE c LENGTH 5,
        "! InterestCalculationCode
        interest_calculation_code  TYPE c LENGTH 2,
        "! InterestCalculationDate
        interest_calculation_date  TYPE datn,
        "! IntrstCalcFrequencyInMonths
        intrst_calc_frequency_in_m TYPE c LENGTH 2,
        "! IsToBeLocallyProcessed
        is_to_be_locally_processed TYPE abap_bool,
        "! ItemIsToBePaidSeparately
        item_is_to_be_paid_separat TYPE abap_bool,
        "! LayoutSortingRule
        layout_sorting_rule        TYPE c LENGTH 3,
        "! PaymentBlockingReason
        payment_blocking_reason    TYPE c LENGTH 1,
        "! PaymentMethodsList
        payment_methods_list       TYPE c LENGTH 10,
        "! PaymentReason
        payment_reason             TYPE c LENGTH 4,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! PaytAdviceIsSentbyEDI
        payt_advice_is_sentby_edi  TYPE abap_bool,
        "! PhysicalInventoryBlockInd
        physical_inventory_block_i TYPE abap_bool,
        "! ReconciliationAccount
        reconciliation_account     TYPE c LENGTH 10,
        "! RecordPaymentHistoryIndicator
        record_payment_history_ind TYPE abap_bool,
        "! UserAtCustomer
        user_at_customer           TYPE c LENGTH 15,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! CashPlanningGroup
        cash_planning_group        TYPE c LENGTH 10,
        "! KnownOrNegotiatedLeave
        known_or_negotiated_leave  TYPE c LENGTH 4,
        "! ValueAdjustmentKey
        value_adjustment_key       TYPE c LENGTH 2,
        "! CustomerAccountGroup
        customer_account_group     TYPE c LENGTH 4,
      END OF tys_a_customer_company_type,
      "! <p class="shorttext synchronized">List of A_CustomerCompanyType</p>
      tyt_a_customer_company_type TYPE STANDARD TABLE OF tys_a_customer_company_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerDunningType</p>
      BEGIN OF tys_a_customer_dunning_type,
        "! <em>Key property</em> Customer
        customer                 TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code             TYPE c LENGTH 4,
        "! <em>Key property</em> DunningArea
        dunning_area             TYPE c LENGTH 2,
        "! DunningBlock
        dunning_block            TYPE c LENGTH 1,
        "! DunningLevel
        dunning_level            TYPE c LENGTH 1,
        "! DunningProcedure
        dunning_procedure        TYPE c LENGTH 4,
        "! DunningRecipient
        dunning_recipient        TYPE c LENGTH 10,
        "! LastDunnedOn
        last_dunned_on           TYPE datn,
        "! LegDunningProcedureOn
        leg_dunning_procedure_on TYPE datn,
        "! DunningClerk
        dunning_clerk            TYPE c LENGTH 2,
        "! AuthorizationGroup
        authorization_group      TYPE c LENGTH 4,
        "! CustomerAccountGroup
        customer_account_group   TYPE c LENGTH 4,
      END OF tys_a_customer_dunning_type,
      "! <p class="shorttext synchronized">List of A_CustomerDunningType</p>
      tyt_a_customer_dunning_type TYPE STANDARD TABLE OF tys_a_customer_dunning_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerSalesAreaTaxType</p>
      BEGIN OF tys_a_customer_sales_area_ta_2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division                   TYPE c LENGTH 2,
        "! <em>Key property</em> DepartureCountry
        departure_country          TYPE c LENGTH 3,
        "! <em>Key property</em> CustomerTaxCategory
        customer_tax_category      TYPE c LENGTH 4,
        "! CustomerTaxClassification
        customer_tax_classificatio TYPE c LENGTH 1,
      END OF tys_a_customer_sales_area_ta_2,
      "! <p class="shorttext synchronized">List of A_CustomerSalesAreaTaxType</p>
      tyt_a_customer_sales_area_ta_2 TYPE STANDARD TABLE OF tys_a_customer_sales_area_ta_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerSalesAreaTextType</p>
      BEGIN OF tys_a_customer_sales_area_te_2,
        "! <em>Key property</em> Customer
        customer             TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization   TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division             TYPE c LENGTH 2,
        "! <em>Key property</em> Language
        language             TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id         TYPE c LENGTH 4,
        "! LongText
        long_text            TYPE string,
      END OF tys_a_customer_sales_area_te_2,
      "! <p class="shorttext synchronized">List of A_CustomerSalesAreaTextType</p>
      tyt_a_customer_sales_area_te_2 TYPE STANDARD TABLE OF tys_a_customer_sales_area_te_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerSalesAreaType</p>
      BEGIN OF tys_a_customer_sales_area_type,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division                   TYPE c LENGTH 2,
        "! AccountByCustomer
        account_by_customer        TYPE c LENGTH 12,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! BillingIsBlockedForCustomer
        billing_is_blocked_for_cus TYPE c LENGTH 2,
        "! CompleteDeliveryIsDefined
        complete_delivery_is_defin TYPE abap_bool,
        "! CreditControlArea
        credit_control_area        TYPE c LENGTH 4,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! CustIsRlvtForSettlmtMgmt
        cust_is_rlvt_for_settlmt_m TYPE abap_bool,
        "! CustomerABCClassification
        customer_abcclassification TYPE c LENGTH 2,
        "! CustomerAccountAssignmentGroup
        customer_account_assignmen TYPE c LENGTH 2,
        "! CustomerGroup
        customer_group             TYPE c LENGTH 2,
        "! CustomerIsRebateRelevant
        customer_is_rebate_relevan TYPE abap_bool,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! CustomerPriceGroup
        customer_price_group       TYPE c LENGTH 2,
        "! CustomerPricingProcedure
        customer_pricing_procedure TYPE c LENGTH 2,
        "! CustomerStatisticsGroup
        customer_statistics_group  TYPE c LENGTH 1,
        "! CustProdProposalProcedure
        cust_prod_proposal_procedu TYPE c LENGTH 2,
        "! DeliveryIsBlockedForCustomer
        delivery_is_blocked_for_cu TYPE c LENGTH 2,
        "! DeliveryPriority
        delivery_priority          TYPE c LENGTH 2,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsSupChnLoc1AddlUUID
        incoterms_sup_chn_loc_1_ad TYPE sysuuid_x16,
        "! IncotermsSupChnLoc2AddlUUID
        incoterms_sup_chn_loc_2_ad TYPE sysuuid_x16,
        "! IncotermsSupChnDvtgLocAddlUUID
        incoterms_sup_chn_dvtg_loc TYPE sysuuid_x16,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! InspSbstHasNoTimeOrQuantity
        insp_sbst_has_no_time_or_q TYPE abap_bool,
        "! InvoiceDate
        invoice_date               TYPE c LENGTH 2,
        "! ItemOrderProbabilityInPercent
        item_order_probability_in  TYPE c LENGTH 3,
        "! ManualInvoiceMaintIsRelevant
        manual_invoice_maint_is_re TYPE abap_bool,
        "! MaxNmbrOfPartialDelivery
        max_nmbr_of_partial_delive TYPE p LENGTH 1 DECIMALS 0,
        "! OrderCombinationIsAllowed
        order_combination_is_allow TYPE abap_bool,
        "! OrderIsBlockedForCustomer
        order_is_blocked_for_custo TYPE c LENGTH 2,
        "! OverdelivTolrtdLmtRatioInPct
        overdeliv_tolrtd_lmt_ratio TYPE p LENGTH 2 DECIMALS 1,
        "! PartialDeliveryIsAllowed
        partial_delivery_is_allowe TYPE c LENGTH 1,
        "! PriceListType
        price_list_type            TYPE c LENGTH 2,
        "! ProductUnitGroup
        product_unit_group         TYPE c LENGTH 4,
        "! ProofOfDeliveryTimeValue
        proof_of_delivery_time_val TYPE p LENGTH 4 DECIMALS 2,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! SalesItemProposal
        sales_item_proposal        TYPE c LENGTH 10,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! SlsDocIsRlvtForProofOfDeliv
        sls_doc_is_rlvt_for_proof  TYPE abap_bool,
        "! SlsUnlmtdOvrdelivIsAllwd
        sls_unlmtd_ovrdeliv_is_all TYPE abap_bool,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! SalesDistrict
        sales_district             TYPE c LENGTH 6,
        "! UnderdelivTolrtdLmtRatioInPct
        underdeliv_tolrtd_lmt_rati TYPE p LENGTH 2 DECIMALS 1,
        "! InvoiceListSchedule
        invoice_list_schedule      TYPE c LENGTH 2,
        "! ExchangeRateType
        exchange_rate_type         TYPE c LENGTH 4,
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
        "! PaymentGuaranteeProcedure
        payment_guarantee_procedur TYPE c LENGTH 4,
        "! CustomerAccountGroup
        customer_account_group     TYPE c LENGTH 4,
      END OF tys_a_customer_sales_area_type,
      "! <p class="shorttext synchronized">List of A_CustomerSalesAreaType</p>
      tyt_a_customer_sales_area_type TYPE STANDARD TABLE OF tys_a_customer_sales_area_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerTaxGroupingType</p>
      BEGIN OF tys_a_customer_tax_grouping_ty,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> CustomerTaxGroupingCode
        customer_tax_grouping_code TYPE c LENGTH 3,
        "! CustTaxGrpExemptionCertificate
        cust_tax_grp_exemption_cer TYPE c LENGTH 15,
        "! CustTaxGroupExemptionRate
        cust_tax_group_exemption_r TYPE p LENGTH 3 DECIMALS 2,
        "! CustTaxGroupExemptionStartDate
        cust_tax_group_exemption_s TYPE datn,
        "! CustTaxGroupExemptionEndDate
        cust_tax_group_exemption_e TYPE datn,
        "! CustTaxGroupSubjectedStartDate
        cust_tax_group_subjected_s TYPE datn,
        "! CustTaxGroupSubjectedEndDate
        cust_tax_group_subjected_e TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_customer_tax_grouping_ty,
      "! <p class="shorttext synchronized">List of A_CustomerTaxGroupingType</p>
      tyt_a_customer_tax_grouping_ty TYPE STANDARD TABLE OF tys_a_customer_tax_grouping_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerTextType</p>
      BEGIN OF tys_a_customer_text_type,
        "! <em>Key property</em> Customer
        customer     TYPE c LENGTH 10,
        "! <em>Key property</em> Language
        language     TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id TYPE c LENGTH 4,
        "! LongText
        long_text    TYPE string,
      END OF tys_a_customer_text_type,
      "! <p class="shorttext synchronized">List of A_CustomerTextType</p>
      tyt_a_customer_text_type TYPE STANDARD TABLE OF tys_a_customer_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerType</p>
      BEGIN OF tys_a_customer_type,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! BillingIsBlockedForCustomer
        billing_is_blocked_for_cus TYPE c LENGTH 2,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CustomerAccountGroup
        customer_account_group     TYPE c LENGTH 4,
        "! CustomerClassification
        customer_classification    TYPE c LENGTH 2,
        "! CustomerFullName
        customer_full_name         TYPE c LENGTH 220,
        "! BPCustomerFullName
        bpcustomer_full_name       TYPE c LENGTH 220,
        "! CustomerName
        customer_name              TYPE c LENGTH 80,
        "! BPCustomerName
        bpcustomer_name            TYPE c LENGTH 81,
        "! DeliveryIsBlocked
        delivery_is_blocked        TYPE c LENGTH 2,
        "! FreeDefinedAttribute01
        free_defined_attribute_01  TYPE c LENGTH 2,
        "! FreeDefinedAttribute02
        free_defined_attribute_02  TYPE c LENGTH 2,
        "! FreeDefinedAttribute03
        free_defined_attribute_03  TYPE c LENGTH 2,
        "! FreeDefinedAttribute04
        free_defined_attribute_04  TYPE c LENGTH 2,
        "! FreeDefinedAttribute05
        free_defined_attribute_05  TYPE c LENGTH 2,
        "! FreeDefinedAttribute06
        free_defined_attribute_06  TYPE c LENGTH 3,
        "! FreeDefinedAttribute07
        free_defined_attribute_07  TYPE c LENGTH 3,
        "! FreeDefinedAttribute08
        free_defined_attribute_08  TYPE c LENGTH 3,
        "! FreeDefinedAttribute09
        free_defined_attribute_09  TYPE c LENGTH 3,
        "! FreeDefinedAttribute10
        free_defined_attribute_10  TYPE c LENGTH 3,
        "! NFPartnerIsNaturalPerson
        nfpartner_is_natural_perso TYPE c LENGTH 1,
        "! OrderIsBlockedForCustomer
        order_is_blocked_for_custo TYPE c LENGTH 2,
        "! PostingIsBlocked
        posting_is_blocked         TYPE abap_bool,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! CustomerCorporateGroup
        customer_corporate_group   TYPE c LENGTH 10,
        "! FiscalAddress
        fiscal_address             TYPE c LENGTH 10,
        "! Industry
        industry                   TYPE c LENGTH 4,
        "! IndustryCode1
        industry_code_1            TYPE c LENGTH 10,
        "! IndustryCode2
        industry_code_2            TYPE c LENGTH 10,
        "! IndustryCode3
        industry_code_3            TYPE c LENGTH 10,
        "! IndustryCode4
        industry_code_4            TYPE c LENGTH 10,
        "! IndustryCode5
        industry_code_5            TYPE c LENGTH 10,
        "! InternationalLocationNumber1
        international_location_num TYPE c LENGTH 7,
        "! InternationalLocationNumber2
        international_location_n_2 TYPE c LENGTH 5,
        "! InternationalLocationNumber3
        international_location_n_3 TYPE c LENGTH 1,
        "! NielsenRegion
        nielsen_region             TYPE c LENGTH 2,
        "! PaymentReason
        payment_reason             TYPE c LENGTH 4,
        "! ResponsibleType
        responsible_type           TYPE c LENGTH 2,
        "! TaxNumber1
        tax_number_1               TYPE c LENGTH 16,
        "! TaxNumber2
        tax_number_2               TYPE c LENGTH 11,
        "! TaxNumber3
        tax_number_3               TYPE c LENGTH 18,
        "! TaxNumber4
        tax_number_4               TYPE c LENGTH 18,
        "! TaxNumber5
        tax_number_5               TYPE c LENGTH 60,
        "! TaxNumberType
        tax_number_type            TYPE c LENGTH 2,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! ExpressTrainStationName
        express_train_station_name TYPE c LENGTH 25,
        "! TrainStationName
        train_station_name         TYPE c LENGTH 25,
        "! CityCode
        city_code                  TYPE c LENGTH 4,
        "! County
        county                     TYPE c LENGTH 3,
        "! BR_ICMSTaxPayerType
        br_icmstax_payer_type      TYPE c LENGTH 2,
        "! BR_EconomicActivityNatlClfn
        br_economic_activity_natl  TYPE c LENGTH 7,
        "! BR_BPLegalNatureType
        br_bplegal_nature_type     TYPE c LENGTH 4,
        "! BR_TaxRegimenCode
        br_tax_regimen_code        TYPE c LENGTH 1,
        "! BR_IndustryMainType
        br_industry_main_type      TYPE c LENGTH 2,
        "! BR_TaxDeclarationType
        br_tax_declaration_type    TYPE c LENGTH 2,
        "! BR_BPCompanySizeType
        br_bpcompany_size_type     TYPE c LENGTH 2,
        "! BR_PISAndCOFINSDeclnRegimen
        br_pisand_cofinsdecln_regi TYPE c LENGTH 2,
      END OF tys_a_customer_type,
      "! <p class="shorttext synchronized">List of A_CustomerType</p>
      tyt_a_customer_type TYPE STANDARD TABLE OF tys_a_customer_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerUnloadingPointType</p>
      BEGIN OF tys_a_customer_unloading_poi_2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> UnloadingPointName
        unloading_point_name       TYPE c LENGTH 25,
        "! CustomerFactoryCalenderCode
        customer_factory_calender  TYPE c LENGTH 2,
        "! BPGoodsReceivingHoursCode
        bpgoods_receiving_hours_co TYPE c LENGTH 3,
        "! IsDfltBPUnloadingPoint
        is_dflt_bpunloading_point  TYPE abap_bool,
        "! MondayMorningOpeningTime
        monday_morning_opening_tim TYPE timn,
        "! MondayMorningClosingTime
        monday_morning_closing_tim TYPE timn,
        "! MondayAfternoonOpeningTime
        monday_afternoon_opening_t TYPE timn,
        "! MondayAfternoonClosingTime
        monday_afternoon_closing_t TYPE timn,
        "! TuesdayMorningOpeningTime
        tuesday_morning_opening_ti TYPE timn,
        "! TuesdayMorningClosingTime
        tuesday_morning_closing_ti TYPE timn,
        "! TuesdayAfternoonOpeningTime
        tuesday_afternoon_opening  TYPE timn,
        "! TuesdayAfternoonClosingTime
        tuesday_afternoon_closing  TYPE timn,
        "! WednesdayMorningOpeningTime
        wednesday_morning_opening  TYPE timn,
        "! WednesdayMorningClosingTime
        wednesday_morning_closing  TYPE timn,
        "! WednesdayAfternoonOpeningTime
        wednesday_afternoon_openin TYPE timn,
        "! WednesdayAfternoonClosingTime
        wednesday_afternoon_closin TYPE timn,
        "! ThursdayMorningOpeningTime
        thursday_morning_opening_t TYPE timn,
        "! ThursdayMorningClosingTime
        thursday_morning_closing_t TYPE timn,
        "! ThursdayAfternoonOpeningTime
        thursday_afternoon_opening TYPE timn,
        "! ThursdayAfternoonClosingTime
        thursday_afternoon_closing TYPE timn,
        "! FridayMorningOpeningTime
        friday_morning_opening_tim TYPE timn,
        "! FridayMorningClosingTime
        friday_morning_closing_tim TYPE timn,
        "! FridayAfternoonOpeningTime
        friday_afternoon_opening_t TYPE timn,
        "! FridayAfternoonClosingTime
        friday_afternoon_closing_t TYPE timn,
        "! SaturdayMorningOpeningTime
        saturday_morning_opening_t TYPE timn,
        "! SaturdayMorningClosingTime
        saturday_morning_closing_t TYPE timn,
        "! SaturdayAfternoonOpeningTime
        saturday_afternoon_opening TYPE timn,
        "! SaturdayAfternoonClosingTime
        saturday_afternoon_closing TYPE timn,
        "! SundayMorningOpeningTime
        sunday_morning_opening_tim TYPE timn,
        "! SundayMorningClosingTime
        sunday_morning_closing_tim TYPE timn,
        "! SundayAfternoonOpeningTime
        sunday_afternoon_opening_t TYPE timn,
        "! SundayAfternoonClosingTime
        sunday_afternoon_closing_t TYPE timn,
      END OF tys_a_customer_unloading_poi_2,
      "! <p class="shorttext synchronized">List of A_CustomerUnloadingPointType</p>
      tyt_a_customer_unloading_poi_2 TYPE STANDARD TABLE OF tys_a_customer_unloading_poi_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustomerWithHoldingTaxType</p>
      BEGIN OF tys_a_customer_with_holding__2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! <em>Key property</em> WithholdingTaxType
        withholding_tax_type       TYPE c LENGTH 2,
        "! WithholdingTaxCode
        withholding_tax_code       TYPE c LENGTH 2,
        "! WithholdingTaxAgent
        withholding_tax_agent      TYPE abap_bool,
        "! ObligationDateBegin
        obligation_date_begin      TYPE datn,
        "! ObligationDateEnd
        obligation_date_end        TYPE datn,
        "! WithholdingTaxNumber
        withholding_tax_number     TYPE c LENGTH 16,
        "! WithholdingTaxCertificate
        withholding_tax_certificat TYPE c LENGTH 25,
        "! WithholdingTaxExmptPercent
        withholding_tax_exmpt_perc TYPE p LENGTH 3 DECIMALS 2,
        "! ExemptionDateBegin
        exemption_date_begin       TYPE datn,
        "! ExemptionDateEnd
        exemption_date_end         TYPE datn,
        "! ExemptionReason
        exemption_reason           TYPE c LENGTH 2,
        "! RecipientType
        recipient_type             TYPE c LENGTH 2,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
      END OF tys_a_customer_with_holding__2,
      "! <p class="shorttext synchronized">List of A_CustomerWithHoldingTaxType</p>
      tyt_a_customer_with_holding__2 TYPE STANDARD TABLE OF tys_a_customer_with_holding__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustAddrDepdntExtIdentifierType</p>
      BEGIN OF tys_a_cust_addr_depdnt_ext_i_2,
        "! <em>Key property</em> Customer
        customer                 TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id               TYPE c LENGTH 10,
        "! CustomerExternalRefID
        customer_external_ref_id TYPE c LENGTH 12,
      END OF tys_a_cust_addr_depdnt_ext_i_2,
      "! <p class="shorttext synchronized">List of A_CustAddrDepdntExtIdentifierType</p>
      tyt_a_cust_addr_depdnt_ext_i_2 TYPE STANDARD TABLE OF tys_a_cust_addr_depdnt_ext_i_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustAddrDepdntInformationType</p>
      BEGIN OF tys_a_cust_addr_depdnt_infor_2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! ExpressTrainStationName
        express_train_station_name TYPE c LENGTH 25,
        "! TrainStationName
        train_station_name         TYPE c LENGTH 25,
        "! CityCode
        city_code                  TYPE c LENGTH 4,
        "! County
        county                     TYPE c LENGTH 3,
      END OF tys_a_cust_addr_depdnt_infor_2,
      "! <p class="shorttext synchronized">List of A_CustAddrDepdntInformationType</p>
      tyt_a_cust_addr_depdnt_infor_2 TYPE STANDARD TABLE OF tys_a_cust_addr_depdnt_infor_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustSalesPartnerFuncType</p>
      BEGIN OF tys_a_cust_sales_partner_fun_2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division                   TYPE c LENGTH 2,
        "! <em>Key property</em> PartnerCounter
        partner_counter            TYPE c LENGTH 3,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! BPCustomerNumber
        bpcustomer_number          TYPE c LENGTH 10,
        "! CustomerPartnerDescription
        customer_partner_descripti TYPE c LENGTH 30,
        "! DefaultPartner
        default_partner            TYPE abap_bool,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! PersonnelNumber
        personnel_number           TYPE c LENGTH 8,
        "! ContactPerson
        contact_person             TYPE c LENGTH 10,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
      END OF tys_a_cust_sales_partner_fun_2,
      "! <p class="shorttext synchronized">List of A_CustSalesPartnerFuncType</p>
      tyt_a_cust_sales_partner_fun_2 TYPE STANDARD TABLE OF tys_a_cust_sales_partner_fun_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustSlsAreaAddrDepdntInfoType</p>
      BEGIN OF tys_a_cust_sls_area_addr_dep_3,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division                   TYPE c LENGTH 2,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! IncotermsSupChnLoc1AddlUUID
        incoterms_sup_chn_loc_1_ad TYPE sysuuid_x16,
        "! IncotermsSupChnLoc2AddlUUID
        incoterms_sup_chn_loc_2_ad TYPE sysuuid_x16,
        "! IncotermsSupChnDvtgLocAddlUUID
        incoterms_sup_chn_dvtg_loc TYPE sysuuid_x16,
        "! DeliveryIsBlocked
        delivery_is_blocked        TYPE c LENGTH 2,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
      END OF tys_a_cust_sls_area_addr_dep_3,
      "! <p class="shorttext synchronized">List of A_CustSlsAreaAddrDepdntInfoType</p>
      tyt_a_cust_sls_area_addr_dep_3 TYPE STANDARD TABLE OF tys_a_cust_sls_area_addr_dep_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustSlsAreaAddrDepdntTaxInfoType</p>
      BEGIN OF tys_a_cust_sls_area_addr_dep_4,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! <em>Key property</em> DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! <em>Key property</em> Division
        division                   TYPE c LENGTH 2,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> DepartureCountry
        departure_country          TYPE c LENGTH 3,
        "! <em>Key property</em> CustomerTaxCategory
        customer_tax_category      TYPE c LENGTH 4,
        "! CustomerTaxClassification
        customer_tax_classificatio TYPE c LENGTH 1,
      END OF tys_a_cust_sls_area_addr_dep_4,
      "! <p class="shorttext synchronized">List of A_CustSlsAreaAddrDepdntTaxInfoType</p>
      tyt_a_cust_sls_area_addr_dep_4 TYPE STANDARD TABLE OF tys_a_cust_sls_area_addr_dep_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CustUnldgPtAddrDepdntInfoType</p>
      BEGIN OF tys_a_cust_unldg_pt_addr_dep_2,
        "! <em>Key property</em> Customer
        customer                   TYPE c LENGTH 10,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> UnloadingPointName
        unloading_point_name       TYPE c LENGTH 25,
        "! CustomerFactoryCalenderCode
        customer_factory_calender  TYPE c LENGTH 2,
        "! BPGoodsReceivingHoursCode
        bpgoods_receiving_hours_co TYPE c LENGTH 3,
        "! IsDfltBPUnloadingPoint
        is_dflt_bpunloading_point  TYPE abap_bool,
        "! MondayMorningOpeningTime
        monday_morning_opening_tim TYPE timn,
        "! MondayMorningClosingTime
        monday_morning_closing_tim TYPE timn,
        "! MondayAfternoonOpeningTime
        monday_afternoon_opening_t TYPE timn,
        "! MondayAfternoonClosingTime
        monday_afternoon_closing_t TYPE timn,
        "! TuesdayMorningOpeningTime
        tuesday_morning_opening_ti TYPE timn,
        "! TuesdayMorningClosingTime
        tuesday_morning_closing_ti TYPE timn,
        "! TuesdayAfternoonOpeningTime
        tuesday_afternoon_opening  TYPE timn,
        "! TuesdayAfternoonClosingTime
        tuesday_afternoon_closing  TYPE timn,
        "! WednesdayMorningOpeningTime
        wednesday_morning_opening  TYPE timn,
        "! WednesdayMorningClosingTime
        wednesday_morning_closing  TYPE timn,
        "! WednesdayAfternoonOpeningTime
        wednesday_afternoon_openin TYPE timn,
        "! WednesdayAfternoonClosingTime
        wednesday_afternoon_closin TYPE timn,
        "! ThursdayMorningOpeningTime
        thursday_morning_opening_t TYPE timn,
        "! ThursdayMorningClosingTime
        thursday_morning_closing_t TYPE timn,
        "! ThursdayAfternoonOpeningTime
        thursday_afternoon_opening TYPE timn,
        "! ThursdayAfternoonClosingTime
        thursday_afternoon_closing TYPE timn,
        "! FridayMorningOpeningTime
        friday_morning_opening_tim TYPE timn,
        "! FridayMorningClosingTime
        friday_morning_closing_tim TYPE timn,
        "! FridayAfternoonOpeningTime
        friday_afternoon_opening_t TYPE timn,
        "! FridayAfternoonClosingTime
        friday_afternoon_closing_t TYPE timn,
        "! SaturdayMorningOpeningTime
        saturday_morning_opening_t TYPE timn,
        "! SaturdayMorningClosingTime
        saturday_morning_closing_t TYPE timn,
        "! SaturdayAfternoonOpeningTime
        saturday_afternoon_opening TYPE timn,
        "! SaturdayAfternoonClosingTime
        saturday_afternoon_closing TYPE timn,
        "! SundayMorningOpeningTime
        sunday_morning_opening_tim TYPE timn,
        "! SundayMorningClosingTime
        sunday_morning_closing_tim TYPE timn,
        "! SundayAfternoonOpeningTime
        sunday_afternoon_opening_t TYPE timn,
        "! SundayAfternoonClosingTime
        sunday_afternoon_closing_t TYPE timn,
      END OF tys_a_cust_unldg_pt_addr_dep_2,
      "! <p class="shorttext synchronized">List of A_CustUnldgPtAddrDepdntInfoType</p>
      tyt_a_cust_unldg_pt_addr_dep_2 TYPE STANDARD TABLE OF tys_a_cust_unldg_pt_addr_dep_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierCompanyTextType</p>
      BEGIN OF tys_a_supplier_company_text_ty,
        "! <em>Key property</em> Supplier
        supplier     TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language     TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id TYPE c LENGTH 4,
        "! LongText
        long_text    TYPE string,
      END OF tys_a_supplier_company_text_ty,
      "! <p class="shorttext synchronized">List of A_SupplierCompanyTextType</p>
      tyt_a_supplier_company_text_ty TYPE STANDARD TABLE OF tys_a_supplier_company_text_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierCompanyType</p>
      BEGIN OF tys_a_supplier_company_type,
        "! <em>Key property</em> Supplier
        supplier                   TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! CompanyCodeName
        company_code_name          TYPE c LENGTH 25,
        "! PaymentBlockingReason
        payment_blocking_reason    TYPE c LENGTH 1,
        "! SupplierIsBlockedForPosting
        supplier_is_blocked_for_po TYPE abap_bool,
        "! AccountingClerk
        accounting_clerk           TYPE c LENGTH 2,
        "! AccountingClerkFaxNumber
        accounting_clerk_fax_numbe TYPE c LENGTH 31,
        "! AccountingClerkPhoneNumber
        accounting_clerk_phone_num TYPE c LENGTH 30,
        "! SupplierClerk
        supplier_clerk             TYPE c LENGTH 15,
        "! SupplierClerkURL
        supplier_clerk_url         TYPE c LENGTH 130,
        "! PaymentMethodsList
        payment_methods_list       TYPE c LENGTH 10,
        "! PaymentReason
        payment_reason             TYPE c LENGTH 4,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! ClearCustomerSupplier
        clear_customer_supplier    TYPE abap_bool,
        "! IsToBeLocallyProcessed
        is_to_be_locally_processed TYPE abap_bool,
        "! ItemIsToBePaidSeparately
        item_is_to_be_paid_separat TYPE abap_bool,
        "! PaymentIsToBeSentByEDI
        payment_is_to_be_sent_by_e TYPE abap_bool,
        "! HouseBank
        house_bank                 TYPE c LENGTH 5,
        "! CheckPaidDurationInDays
        check_paid_duration_in_day TYPE p LENGTH 2 DECIMALS 0,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! BillOfExchLmtAmtInCoCodeCrcy
        bill_of_exch_lmt_amt_in_co TYPE p LENGTH 8 DECIMALS 3,
        "! SupplierClerkIDBySupplier
        supplier_clerk_idby_suppli TYPE c LENGTH 12,
        "! ReconciliationAccount
        reconciliation_account     TYPE c LENGTH 10,
        "! InterestCalculationCode
        interest_calculation_code  TYPE c LENGTH 2,
        "! InterestCalculationDate
        interest_calculation_date  TYPE datn,
        "! IntrstCalcFrequencyInMonths
        intrst_calc_frequency_in_m TYPE c LENGTH 2,
        "! SupplierHeadOffice
        supplier_head_office       TYPE c LENGTH 10,
        "! AlternativePayee
        alternative_payee          TYPE c LENGTH 10,
        "! LayoutSortingRule
        layout_sorting_rule        TYPE c LENGTH 3,
        "! APARToleranceGroup
        apartolerance_group        TYPE c LENGTH 4,
        "! SupplierCertificationDate
        supplier_certification_dat TYPE datn,
        "! SupplierAccountNote
        supplier_account_note      TYPE c LENGTH 30,
        "! WithholdingTaxCountry
        withholding_tax_country    TYPE c LENGTH 3,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! CashPlanningGroup
        cash_planning_group        TYPE c LENGTH 10,
        "! IsToBeCheckedForDuplicates
        is_to_be_checked_for_dupli TYPE abap_bool,
        "! MinorityGroup
        minority_group             TYPE c LENGTH 3,
        "! CreditMemoPaymentTerms
        credit_memo_payment_terms  TYPE c LENGTH 4,
        "! SupplierAccountGroup
        supplier_account_group     TYPE c LENGTH 4,
      END OF tys_a_supplier_company_type,
      "! <p class="shorttext synchronized">List of A_SupplierCompanyType</p>
      tyt_a_supplier_company_type TYPE STANDARD TABLE OF tys_a_supplier_company_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierDunningType</p>
      BEGIN OF tys_a_supplier_dunning_type,
        "! <em>Key property</em> Supplier
        supplier                 TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code             TYPE c LENGTH 4,
        "! <em>Key property</em> DunningArea
        dunning_area             TYPE c LENGTH 2,
        "! DunningBlock
        dunning_block            TYPE c LENGTH 1,
        "! DunningLevel
        dunning_level            TYPE c LENGTH 1,
        "! DunningProcedure
        dunning_procedure        TYPE c LENGTH 4,
        "! DunningRecipient
        dunning_recipient        TYPE c LENGTH 10,
        "! LastDunnedOn
        last_dunned_on           TYPE datn,
        "! LegDunningProcedureOn
        leg_dunning_procedure_on TYPE datn,
        "! DunningClerk
        dunning_clerk            TYPE c LENGTH 2,
        "! AuthorizationGroup
        authorization_group      TYPE c LENGTH 4,
        "! SupplierAccountGroup
        supplier_account_group   TYPE c LENGTH 4,
      END OF tys_a_supplier_dunning_type,
      "! <p class="shorttext synchronized">List of A_SupplierDunningType</p>
      tyt_a_supplier_dunning_type TYPE STANDARD TABLE OF tys_a_supplier_dunning_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierPartnerFuncType</p>
      BEGIN OF tys_a_supplier_partner_func_ty,
        "! <em>Key property</em> Supplier
        supplier                TYPE c LENGTH 10,
        "! <em>Key property</em> PurchasingOrganization
        purchasing_organization TYPE c LENGTH 4,
        "! <em>Key property</em> SupplierSubrange
        supplier_subrange       TYPE c LENGTH 6,
        "! <em>Key property</em> Plant
        plant                   TYPE c LENGTH 4,
        "! <em>Key property</em> PartnerFunction
        partner_function        TYPE c LENGTH 2,
        "! <em>Key property</em> PartnerCounter
        partner_counter         TYPE c LENGTH 3,
        "! DefaultPartner
        default_partner         TYPE abap_bool,
        "! CreationDate
        creation_date           TYPE datn,
        "! CreatedByUser
        created_by_user         TYPE c LENGTH 12,
        "! ReferenceSupplier
        reference_supplier      TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group     TYPE c LENGTH 4,
      END OF tys_a_supplier_partner_func_ty,
      "! <p class="shorttext synchronized">List of A_SupplierPartnerFuncType</p>
      tyt_a_supplier_partner_func_ty TYPE STANDARD TABLE OF tys_a_supplier_partner_func_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierPurchasingOrgType</p>
      BEGIN OF tys_a_supplier_purchasing_or_3,
        "! <em>Key property</em> Supplier
        supplier                   TYPE c LENGTH 10,
        "! <em>Key property</em> PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! AutomaticEvaluatedRcptSettlmt
        automatic_evaluated_rcpt_s TYPE abap_bool,
        "! CalculationSchemaGroupCode
        calculation_schema_group_c TYPE c LENGTH 2,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! EvaldReceiptSettlementIsActive
        evald_receipt_settlement_i TYPE abap_bool,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! IncotermsSupChnLoc1AddlUUID
        incoterms_sup_chn_loc_1_ad TYPE sysuuid_x16,
        "! IncotermsSupChnLoc2AddlUUID
        incoterms_sup_chn_loc_2_ad TYPE sysuuid_x16,
        "! IncotermsSupChnDvtgLocAddlUUID
        incoterms_sup_chn_dvtg_loc TYPE sysuuid_x16,
        "! IntrastatCrsBorderTrMode
        intrastat_crs_border_tr_mo TYPE c LENGTH 1,
        "! InvoiceIsGoodsReceiptBased
        invoice_is_goods_receipt_b TYPE abap_bool,
        "! InvoiceIsMMServiceEntryBased
        invoice_is_mmservice_entry TYPE abap_bool,
        "! MaterialPlannedDeliveryDurn
        material_planned_delivery  TYPE p LENGTH 2 DECIMALS 0,
        "! MinimumOrderAmount
        minimum_order_amount       TYPE p LENGTH 8 DECIMALS 3,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! PlanningCycle
        planning_cycle             TYPE c LENGTH 3,
        "! PricingDateControl
        pricing_date_control       TYPE c LENGTH 1,
        "! ProdStockAndSlsDataTransfPrfl
        prod_stock_and_sls_data_tr TYPE c LENGTH 4,
        "! ProductUnitGroup
        product_unit_group         TYPE c LENGTH 4,
        "! PurOrdAutoGenerationIsAllowed
        pur_ord_auto_generation_is TYPE abap_bool,
        "! PurchaseOrderCurrency
        purchase_order_currency    TYPE c LENGTH 5,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! PurchasingIsBlockedForSupplier
        purchasing_is_blocked_for  TYPE abap_bool,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! SuplrDiscountInKindIsGranted
        suplr_discount_in_kind_is  TYPE abap_bool,
        "! SuplrInvcRevalIsAllowed
        suplr_invc_reval_is_allowe TYPE abap_bool,
        "! SuplrIsRlvtForSettlmtMgmt
        suplr_is_rlvt_for_settlmt  TYPE abap_bool,
        "! SuplrPurgOrgIsRlvtForPriceDetn
        suplr_purg_org_is_rlvt_for TYPE abap_bool,
        "! SupplierABCClassificationCode
        supplier_abcclassification TYPE c LENGTH 1,
        "! SupplierAccountNumber
        supplier_account_number    TYPE c LENGTH 12,
        "! SupplierIsReturnsSupplier
        supplier_is_returns_suppli TYPE abap_bool,
        "! SupplierPhoneNumber
        supplier_phone_number      TYPE c LENGTH 16,
        "! SupplierRespSalesPersonName
        supplier_resp_sales_person TYPE c LENGTH 30,
        "! SupplierConfirmationControlKey
        supplier_confirmation_cont TYPE c LENGTH 4,
        "! IsOrderAcknRqd
        is_order_ackn_rqd          TYPE abap_bool,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! SupplierAccountGroup
        supplier_account_group     TYPE c LENGTH 4,
      END OF tys_a_supplier_purchasing_or_3,
      "! <p class="shorttext synchronized">List of A_SupplierPurchasingOrgType</p>
      tyt_a_supplier_purchasing_or_3 TYPE STANDARD TABLE OF tys_a_supplier_purchasing_or_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierPurchasingOrgTextType</p>
      BEGIN OF tys_a_supplier_purchasing_or_4,
        "! <em>Key property</em> Supplier
        supplier                TYPE c LENGTH 10,
        "! <em>Key property</em> PurchasingOrganization
        purchasing_organization TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id            TYPE c LENGTH 4,
        "! LongText
        long_text               TYPE string,
      END OF tys_a_supplier_purchasing_or_4,
      "! <p class="shorttext synchronized">List of A_SupplierPurchasingOrgTextType</p>
      tyt_a_supplier_purchasing_or_4 TYPE STANDARD TABLE OF tys_a_supplier_purchasing_or_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierTextType</p>
      BEGIN OF tys_a_supplier_text_type,
        "! <em>Key property</em> Supplier
        supplier     TYPE c LENGTH 10,
        "! <em>Key property</em> Language
        language     TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id TYPE c LENGTH 4,
        "! LongText
        long_text    TYPE string,
      END OF tys_a_supplier_text_type,
      "! <p class="shorttext synchronized">List of A_SupplierTextType</p>
      tyt_a_supplier_text_type TYPE STANDARD TABLE OF tys_a_supplier_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierType</p>
      BEGIN OF tys_a_supplier_type,
        "! <em>Key property</em> Supplier
        supplier                   TYPE c LENGTH 10,
        "! AlternativePayeeAccountNumber
        alternative_payee_account  TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! BusinessPartnerPanNumber
        business_partner_pan_numbe TYPE c LENGTH 40,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! PaymentIsBlockedForSupplier
        payment_is_blocked_for_sup TYPE abap_bool,
        "! PostingIsBlocked
        posting_is_blocked         TYPE abap_bool,
        "! PurchasingIsBlocked
        purchasing_is_blocked      TYPE abap_bool,
        "! SupplierAccountGroup
        supplier_account_group     TYPE c LENGTH 4,
        "! SupplierFullName
        supplier_full_name         TYPE c LENGTH 220,
        "! SupplierName
        supplier_name              TYPE c LENGTH 80,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! BirthDate
        birth_date                 TYPE datn,
        "! ConcatenatedInternationalLocNo
        concatenated_international TYPE c LENGTH 20,
        "! DeletionIndicator
        deletion_indicator         TYPE abap_bool,
        "! FiscalAddress
        fiscal_address             TYPE c LENGTH 10,
        "! Industry
        industry                   TYPE c LENGTH 4,
        "! InternationalLocationNumber1
        international_location_num TYPE c LENGTH 7,
        "! InternationalLocationNumber2
        international_location_n_2 TYPE c LENGTH 5,
        "! InternationalLocationNumber3
        international_location_n_3 TYPE c LENGTH 1,
        "! IsNaturalPerson
        is_natural_person          TYPE c LENGTH 1,
        "! PaymentReason
        payment_reason             TYPE c LENGTH 4,
        "! ResponsibleType
        responsible_type           TYPE c LENGTH 2,
        "! SuplrQltyInProcmtCertfnValidTo
        suplr_qlty_in_procmt_certf TYPE datn,
        "! SuplrQualityManagementSystem
        suplr_quality_management_s TYPE c LENGTH 4,
        "! SupplierCorporateGroup
        supplier_corporate_group   TYPE c LENGTH 10,
        "! SupplierProcurementBlock
        supplier_procurement_block TYPE c LENGTH 2,
        "! TaxNumber1
        tax_number_1               TYPE c LENGTH 16,
        "! TaxNumber2
        tax_number_2               TYPE c LENGTH 11,
        "! TaxNumber3
        tax_number_3               TYPE c LENGTH 18,
        "! TaxNumber4
        tax_number_4               TYPE c LENGTH 18,
        "! TaxNumber5
        tax_number_5               TYPE c LENGTH 60,
        "! TaxNumberResponsible
        tax_number_responsible     TYPE c LENGTH 18,
        "! TaxNumberType
        tax_number_type            TYPE c LENGTH 2,
        "! SuplrProofOfDelivRlvtCode
        suplr_proof_of_deliv_rlvt  TYPE c LENGTH 1,
        "! BR_TaxIsSplit
        br_tax_is_split            TYPE abap_bool,
        "! DataExchangeInstructionKey
        data_exchange_instruction  TYPE c LENGTH 2,
        "! BR_TermsOfLiabilityAreAccepted
        br_terms_of_liability_are  TYPE abap_bool,
        "! BR_BPIsMicroCompany
        br_bpis_micro_company      TYPE abap_bool,
        "! BR_BPCompanySizeType
        br_bpcompany_size_type     TYPE c LENGTH 2,
        "! BR_PISAndCOFINSDeclnRegimen
        br_pisand_cofinsdecln_regi TYPE c LENGTH 2,
        "! BR_EconomicActivityNatlClfn
        br_economic_activity_natl  TYPE c LENGTH 7,
        "! BR_BPLegalNatureType
        br_bplegal_nature_type     TYPE c LENGTH 4,
        "! BR_TaxRegimenCode
        br_tax_regimen_code        TYPE c LENGTH 1,
        "! BR_ICMSTaxPayerType
        br_icmstax_payer_type      TYPE c LENGTH 2,
        "! BR_IndustryMainType
        br_industry_main_type      TYPE c LENGTH 2,
        "! BR_TaxDeclarationType
        br_tax_declaration_type    TYPE c LENGTH 2,
        "! JP_SuplrAmtInCapitalAmount
        jp_suplr_amt_in_capital_am TYPE p LENGTH 9 DECIMALS 3,
        "! JP_SupplierCapitalAmountCrcy
        jp_supplier_capital_amount TYPE c LENGTH 5,
      END OF tys_a_supplier_type,
      "! <p class="shorttext synchronized">List of A_SupplierType</p>
      tyt_a_supplier_type TYPE STANDARD TABLE OF tys_a_supplier_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SupplierWithHoldingTaxType</p>
      BEGIN OF tys_a_supplier_with_holding__2,
        "! <em>Key property</em> Supplier
        supplier                   TYPE c LENGTH 10,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! <em>Key property</em> WithholdingTaxType
        withholding_tax_type       TYPE c LENGTH 2,
        "! ExemptionDateBegin
        exemption_date_begin       TYPE datn,
        "! ExemptionDateEnd
        exemption_date_end         TYPE datn,
        "! ExemptionReason
        exemption_reason           TYPE c LENGTH 2,
        "! IsWithholdingTaxSubject
        is_withholding_tax_subject TYPE abap_bool,
        "! RecipientType
        recipient_type             TYPE c LENGTH 2,
        "! WithholdingTaxCertificate
        withholding_tax_certificat TYPE c LENGTH 25,
        "! WithholdingTaxCode
        withholding_tax_code       TYPE c LENGTH 2,
        "! WithholdingTaxExmptPercent
        withholding_tax_exmpt_perc TYPE p LENGTH 3 DECIMALS 2,
        "! WithholdingTaxNumber
        withholding_tax_number     TYPE c LENGTH 16,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
      END OF tys_a_supplier_with_holding__2,
      "! <p class="shorttext synchronized">List of A_SupplierWithHoldingTaxType</p>
      tyt_a_supplier_with_holding__2 TYPE STANDARD TABLE OF tys_a_supplier_with_holding__2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_AddressEmailAddress
        "! <br/> Collection of type 'A_AddressEmailAddressType'
        a_address_email_address    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_ADDRESS_EMAIL_ADDRESS',
        "! A_AddressFaxNumber
        "! <br/> Collection of type 'A_AddressFaxNumberType'
        a_address_fax_number       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_ADDRESS_FAX_NUMBER',
        "! A_AddressHomePageURL
        "! <br/> Collection of type 'A_AddressHomePageURLType'
        a_address_home_page_url    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_ADDRESS_HOME_PAGE_URL',
        "! A_AddressPhoneNumber
        "! <br/> Collection of type 'A_AddressPhoneNumberType'
        a_address_phone_number     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_ADDRESS_PHONE_NUMBER',
        "! A_BPAddressIndependentEmail
        "! <br/> Collection of type 'A_BPAddressIndependentEmailType'
        a_bpaddress_independent_em TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDRESS_INDEPENDENT_EM',
        "! A_BPAddressIndependentFax
        "! <br/> Collection of type 'A_BPAddressIndependentFaxType'
        a_bpaddress_independent_fa TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDRESS_INDEPENDENT_FA',
        "! A_BPAddressIndependentMobile
        "! <br/> Collection of type 'A_BPAddressIndependentMobileType'
        a_bpaddress_independent_mo TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDRESS_INDEPENDENT_MO',
        "! A_BPAddressIndependentPhone
        "! <br/> Collection of type 'A_BPAddressIndependentPhoneType'
        a_bpaddress_independent_ph TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDRESS_INDEPENDENT_PH',
        "! A_BPAddressIndependentWebsite
        "! <br/> Collection of type 'A_BPAddressIndependentWebsiteType'
        a_bpaddress_independent_we TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDRESS_INDEPENDENT_WE',
        "! A_BPAddrDepdntIntlLocNumber
        "! <br/> Collection of type 'A_BPAddrDepdntIntlLocNumberType'
        a_bpaddr_depdnt_intl_loc_n TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPADDR_DEPDNT_INTL_LOC_N',
        "! A_BPContactPersonEmlAddr
        "! <br/> Collection of type 'A_BPContactPersonEmlAddrType'
        a_bpcontact_person_eml_add TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_PERSON_EML_ADD',
        "! A_BPContactPersonFaxNmbr
        "! <br/> Collection of type 'A_BPContactPersonFaxNmbrType'
        a_bpcontact_person_fax_nmb TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_PERSON_FAX_NMB',
        "! A_BPContactPersonMblNmbr
        "! <br/> Collection of type 'A_BPContactPersonMblNmbrType'
        a_bpcontact_person_mbl_nmb TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_PERSON_MBL_NMB',
        "! A_BPContactPersonTelNmbr
        "! <br/> Collection of type 'A_BPContactPersonTelNmbrType'
        a_bpcontact_person_tel_nmb TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_PERSON_TEL_NMB',
        "! A_BPContactPersonWbsteURL
        "! <br/> Collection of type 'A_BPContactPersonWbsteURLType'
        a_bpcontact_person_wbste_u TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_PERSON_WBSTE_U',
        "! A_BPContactToAddress
        "! <br/> Collection of type 'A_BPContactToAddressType'
        a_bpcontact_to_address     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_TO_ADDRESS',
        "! A_BPContactToFuncAndDept
        "! <br/> Collection of type 'A_BPContactToFuncAndDeptType'
        a_bpcontact_to_func_and_de TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCONTACT_TO_FUNC_AND_DE',
        "! A_BPCreditWorthiness
        "! <br/> Collection of type 'A_BPCreditWorthinessType'
        a_bpcredit_worthiness      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPCREDIT_WORTHINESS',
        "! A_BPDataController
        "! <br/> Collection of type 'A_BPDataControllerType'
        a_bpdata_controller        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPDATA_CONTROLLER',
        "! A_BPEmployment
        "! <br/> Collection of type 'A_BPEmploymentType'
        a_bpemployment             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPEMPLOYMENT',
        "! A_BPFinancialServicesExtn
        "! <br/> Collection of type 'A_BPFinancialServicesExtnType'
        a_bpfinancial_services_ext TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPFINANCIAL_SERVICES_EXT',
        "! A_BPFinancialServicesReporting
        "! <br/> Collection of type 'A_BPFinancialServicesReportingType'
        a_bpfinancial_services_rep TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPFINANCIAL_SERVICES_REP',
        "! A_BPFiscalYearInformation
        "! <br/> Collection of type 'A_BPFiscalYearInformationType'
        a_bpfiscal_year_informatio TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPFISCAL_YEAR_INFORMATIO',
        "! A_BPIntlAddressVersion
        "! <br/> Collection of type 'A_BPIntlAddressVersionType'
        a_bpintl_address_version   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPINTL_ADDRESS_VERSION',
        "! A_BPRelationship
        "! <br/> Collection of type 'A_BPRelationshipType'
        a_bprelationship           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BPRELATIONSHIP',
        "! A_BusinessPartner
        "! <br/> Collection of type 'A_BusinessPartnerType'
        a_business_partner         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER',
        "! A_BusinessPartnerAddress
        "! <br/> Collection of type 'A_BusinessPartnerAddressType'
        a_business_partner_address TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_ADDRESS',
        "! A_BusinessPartnerAlias
        "! <br/> Collection of type 'A_BusinessPartnerAliasType'
        a_business_partner_alias   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_ALIAS',
        "! A_BusinessPartnerBank
        "! <br/> Collection of type 'A_BusinessPartnerBankType'
        a_business_partner_bank    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_BANK',
        "! A_BusinessPartnerContact
        "! <br/> Collection of type 'A_BusinessPartnerContactType'
        a_business_partner_contact TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_CONTACT',
        "! A_BusinessPartnerIsBank
        "! <br/> Collection of type 'A_BusinessPartnerIsBankType'
        a_business_partner_is_bank TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_IS_BANK',
        "! A_BusinessPartnerPaymentCard
        "! <br/> Collection of type 'A_BusinessPartnerPaymentCardType'
        a_business_partner_payment TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_PAYMENT',
        "! A_BusinessPartnerRating
        "! <br/> Collection of type 'A_BusinessPartnerRatingType'
        a_business_partner_rating  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_RATING',
        "! A_BusinessPartnerRole
        "! <br/> Collection of type 'A_BusinessPartnerRoleType'
        a_business_partner_role    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_ROLE',
        "! A_BusinessPartnerTaxNumber
        "! <br/> Collection of type 'A_BusinessPartnerTaxNumberType'
        a_business_partner_tax_num TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUSINESS_PARTNER_TAX_NUM',
        "! A_BusPartAddrDepdntTaxNmbr
        "! <br/> Collection of type 'A_BusPartAddrDepdntTaxNmbrType'
        a_bus_part_addr_depdnt_tax TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUS_PART_ADDR_DEPDNT_TAX',
        "! A_BuPaAddressUsage
        "! <br/> Collection of type 'A_BuPaAddressUsageType'
        a_bu_pa_address_usage      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BU_PA_ADDRESS_USAGE',
        "! A_BuPaIdentification
        "! <br/> Collection of type 'A_BuPaIdentificationType'
        a_bu_pa_identification     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BU_PA_IDENTIFICATION',
        "! A_BuPaIndustry
        "! <br/> Collection of type 'A_BuPaIndustryType'
        a_bu_pa_industry           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BU_PA_INDUSTRY',
        "! A_Customer
        "! <br/> Collection of type 'A_CustomerType'
        a_customer                 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER',
        "! A_CustomerCompany
        "! <br/> Collection of type 'A_CustomerCompanyType'
        a_customer_company         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_COMPANY',
        "! A_CustomerCompanyText
        "! <br/> Collection of type 'A_CustomerCompanyTextType'
        a_customer_company_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_COMPANY_TEXT',
        "! A_CustomerDunning
        "! <br/> Collection of type 'A_CustomerDunningType'
        a_customer_dunning         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_DUNNING',
        "! A_CustomerSalesArea
        "! <br/> Collection of type 'A_CustomerSalesAreaType'
        a_customer_sales_area      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_SALES_AREA',
        "! A_CustomerSalesAreaTax
        "! <br/> Collection of type 'A_CustomerSalesAreaTaxType'
        a_customer_sales_area_tax  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_SALES_AREA_TAX',
        "! A_CustomerSalesAreaText
        "! <br/> Collection of type 'A_CustomerSalesAreaTextType'
        a_customer_sales_area_text TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_SALES_AREA_TEXT',
        "! A_CustomerTaxGrouping
        "! <br/> Collection of type 'A_CustomerTaxGroupingType'
        a_customer_tax_grouping    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_TAX_GROUPING',
        "! A_CustomerText
        "! <br/> Collection of type 'A_CustomerTextType'
        a_customer_text            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_TEXT',
        "! A_CustomerUnloadingPoint
        "! <br/> Collection of type 'A_CustomerUnloadingPointType'
        a_customer_unloading_point TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_UNLOADING_POINT',
        "! A_CustomerWithHoldingTax
        "! <br/> Collection of type 'A_CustomerWithHoldingTaxType'
        a_customer_with_holding_ta TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_WITH_HOLDING_TA',
        "! A_CustAddrDepdntExtIdentifier
        "! <br/> Collection of type 'A_CustAddrDepdntExtIdentifierType'
        a_cust_addr_depdnt_ext_ide TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_ADDR_DEPDNT_EXT_IDE',
        "! A_CustAddrDepdntInformation
        "! <br/> Collection of type 'A_CustAddrDepdntInformationType'
        a_cust_addr_depdnt_informa TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_ADDR_DEPDNT_INFORMA',
        "! A_CustSalesPartnerFunc
        "! <br/> Collection of type 'A_CustSalesPartnerFuncType'
        a_cust_sales_partner_func  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_SALES_PARTNER_FUNC',
        "! A_CustSlsAreaAddrDepdntInfo
        "! <br/> Collection of type 'A_CustSlsAreaAddrDepdntInfoType'
        a_cust_sls_area_addr_depdn TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_SLS_AREA_ADDR_DEPDN',
        "! A_CustSlsAreaAddrDepdntTaxInfo
        "! <br/> Collection of type 'A_CustSlsAreaAddrDepdntTaxInfoType'
        a_cust_sls_area_addr_dep_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_SLS_AREA_ADDR_DEP_2',
        "! A_CustUnldgPtAddrDepdntInfo
        "! <br/> Collection of type 'A_CustUnldgPtAddrDepdntInfoType'
        a_cust_unldg_pt_addr_depdn TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUST_UNLDG_PT_ADDR_DEPDN',
        "! A_Supplier
        "! <br/> Collection of type 'A_SupplierType'
        a_supplier                 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER',
        "! A_SupplierCompany
        "! <br/> Collection of type 'A_SupplierCompanyType'
        a_supplier_company         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_COMPANY',
        "! A_SupplierCompanyText
        "! <br/> Collection of type 'A_SupplierCompanyTextType'
        a_supplier_company_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_COMPANY_TEXT',
        "! A_SupplierDunning
        "! <br/> Collection of type 'A_SupplierDunningType'
        a_supplier_dunning         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_DUNNING',
        "! A_SupplierPartnerFunc
        "! <br/> Collection of type 'A_SupplierPartnerFuncType'
        a_supplier_partner_func    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_PARTNER_FUNC',
        "! A_SupplierPurchasingOrg
        "! <br/> Collection of type 'A_SupplierPurchasingOrgType'
        a_supplier_purchasing_org  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_PURCHASING_ORG',
        "! A_SupplierPurchasingOrgText
        "! <br/> Collection of type 'A_SupplierPurchasingOrgTextType'
        a_supplier_purchasing_or_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_PURCHASING_OR_2',
        "! A_SupplierText
        "! <br/> Collection of type 'A_SupplierTextType'
        a_supplier_text            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_TEXT',
        "! A_SupplierWithHoldingTax
        "! <br/> Collection of type 'A_SupplierWithHoldingTaxType'
        a_supplier_with_holding_ta TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SUPPLIER_WITH_HOLDING_TA',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! DuplicateCheck
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        duplicate_check TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'DUPLICATE_CHECK',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for DuplicateCheckResult</p>
        "! See also structure type {@link ..tys_duplicate_check_result}
        BEGIN OF duplicate_check_result,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF duplicate_check_result,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_AddressEmailAddressType</p>
        "! See also structure type {@link ..tys_a_address_email_address_ty}
        BEGIN OF a_address_email_address_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_address_email_address_ty,
        "! <p class="shorttext synchronized">Internal names for A_AddressFaxNumberType</p>
        "! See also structure type {@link ..tys_a_address_fax_number_type}
        BEGIN OF a_address_fax_number_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_address_fax_number_type,
        "! <p class="shorttext synchronized">Internal names for A_AddressHomePageURLType</p>
        "! See also structure type {@link ..tys_a_address_home_page_urltyp}
        BEGIN OF a_address_home_page_urltyp,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_address_home_page_urltyp,
        "! <p class="shorttext synchronized">Internal names for A_AddressPhoneNumberType</p>
        "! See also structure type {@link ..tys_a_address_phone_number_typ}
        BEGIN OF a_address_phone_number_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_address_phone_number_typ,
        "! <p class="shorttext synchronized">Internal names for A_BPAddressIndependentEmailType</p>
        "! See also structure type {@link ..tys_a_bpaddress_independent__2}
        BEGIN OF a_bpaddress_independent__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddress_independent__2,
        "! <p class="shorttext synchronized">Internal names for A_BPAddressIndependentFaxType</p>
        "! See also structure type {@link ..tys_a_bpaddress_independent__3}
        BEGIN OF a_bpaddress_independent__3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddress_independent__3,
        "! <p class="shorttext synchronized">Internal names for A_BPAddressIndependentMobileType</p>
        "! See also structure type {@link ..tys_a_bpaddress_independent__4}
        BEGIN OF a_bpaddress_independent__4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddress_independent__4,
        "! <p class="shorttext synchronized">Internal names for A_BPAddressIndependentPhoneType</p>
        "! See also structure type {@link ..tys_a_bpaddress_independent__5}
        BEGIN OF a_bpaddress_independent__5,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddress_independent__5,
        "! <p class="shorttext synchronized">Internal names for A_BPAddressIndependentWebsiteType</p>
        "! See also structure type {@link ..tys_a_bpaddress_independent__6}
        BEGIN OF a_bpaddress_independent__6,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddress_independent__6,
        "! <p class="shorttext synchronized">Internal names for A_BPAddrDepdntIntlLocNumberType</p>
        "! See also structure type {@link ..tys_a_bpaddr_depdnt_intl_loc_2}
        BEGIN OF a_bpaddr_depdnt_intl_loc_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpaddr_depdnt_intl_loc_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactPersonEmlAddrType</p>
        "! See also structure type {@link ..tys_a_bpcontact_person_eml_a_2}
        BEGIN OF a_bpcontact_person_eml_a_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_person_eml_a_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactPersonFaxNmbrType</p>
        "! See also structure type {@link ..tys_a_bpcontact_person_fax_n_2}
        BEGIN OF a_bpcontact_person_fax_n_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_person_fax_n_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactPersonMblNmbrType</p>
        "! See also structure type {@link ..tys_a_bpcontact_person_mbl_n_2}
        BEGIN OF a_bpcontact_person_mbl_n_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_person_mbl_n_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactPersonTelNmbrType</p>
        "! See also structure type {@link ..tys_a_bpcontact_person_tel_n_2}
        BEGIN OF a_bpcontact_person_tel_n_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_person_tel_n_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactPersonWbsteURLType</p>
        "! See also structure type {@link ..tys_a_bpcontact_person_wbste_2}
        BEGIN OF a_bpcontact_person_wbste_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_person_wbste_2,
        "! <p class="shorttext synchronized">Internal names for A_BPContactToAddressType</p>
        "! See also structure type {@link ..tys_a_bpcontact_to_address_typ}
        BEGIN OF a_bpcontact_to_address_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BPRelshpCntctPersnEmailAddr
            to_bprelshp_cntct_persn_em TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELSHP_CNTCT_PERSN_EM',
            "! to_BPRelshpCntctPersnFaxNumber
            to_bprelshp_cntct_persn_fa TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELSHP_CNTCT_PERSN_FA',
            "! to_BPRelshpCntctPersnMblNumber
            to_bprelshp_cntct_persn_mb TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELSHP_CNTCT_PERSN_MB',
            "! to_BPRelshpCntctPersnTelNumber
            to_bprelshp_cntct_persn_te TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELSHP_CNTCT_PERSN_TE',
            "! to_BPRelshpCntctPersnWbsteURL
            to_bprelshp_cntct_persn_wb TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELSHP_CNTCT_PERSN_WB',
            "! to_EmailAddress
            to_email_address           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EMAIL_ADDRESS',
            "! to_FaxNumber
            to_fax_number              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_FAX_NUMBER',
            "! to_MobilePhoneNumber
            to_mobile_phone_number     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_MOBILE_PHONE_NUMBER',
            "! to_PhoneNumber
            to_phone_number            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PHONE_NUMBER',
            "! to_URLAddress
            to_urladdress              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_URLADDRESS',
          END OF navigation,
        END OF a_bpcontact_to_address_typ,
        "! <p class="shorttext synchronized">Internal names for A_BPContactToFuncAndDeptType</p>
        "! See also structure type {@link ..tys_a_bpcontact_to_func_and__2}
        BEGIN OF a_bpcontact_to_func_and__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcontact_to_func_and__2,
        "! <p class="shorttext synchronized">Internal names for A_BPCreditWorthinessType</p>
        "! See also structure type {@link ..tys_a_bpcredit_worthiness_type}
        BEGIN OF a_bpcredit_worthiness_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpcredit_worthiness_type,
        "! <p class="shorttext synchronized">Internal names for A_BPDataControllerType</p>
        "! See also structure type {@link ..tys_a_bpdata_controller_type}
        BEGIN OF a_bpdata_controller_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpdata_controller_type,
        "! <p class="shorttext synchronized">Internal names for A_BPEmploymentType</p>
        "! See also structure type {@link ..tys_a_bpemployment_type}
        BEGIN OF a_bpemployment_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpemployment_type,
        "! <p class="shorttext synchronized">Internal names for A_BPFinancialServicesExtnType</p>
        "! See also structure type {@link ..tys_a_bpfinancial_services_e_2}
        BEGIN OF a_bpfinancial_services_e_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpfinancial_services_e_2,
        "! <p class="shorttext synchronized">Internal names for A_BPFinancialServicesReportingType</p>
        "! See also structure type {@link ..tys_a_bpfinancial_services_r_2}
        BEGIN OF a_bpfinancial_services_r_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpfinancial_services_r_2,
        "! <p class="shorttext synchronized">Internal names for A_BPFiscalYearInformationType</p>
        "! See also structure type {@link ..tys_a_bpfiscal_year_informat_2}
        BEGIN OF a_bpfiscal_year_informat_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpfiscal_year_informat_2,
        "! <p class="shorttext synchronized">Internal names for A_BPIntlAddressVersionType</p>
        "! See also structure type {@link ..tys_a_bpintl_address_version_t}
        BEGIN OF a_bpintl_address_version_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bpintl_address_version_t,
        "! <p class="shorttext synchronized">Internal names for A_BPRelationshipType</p>
        "! See also structure type {@link ..tys_a_bprelationship_type}
        BEGIN OF a_bprelationship_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bprelationship_type,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerAddressType</p>
        "! See also structure type {@link ..tys_a_business_partner_addre_2}
        BEGIN OF a_business_partner_addre_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_AddressUsage
            to_address_usage          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_USAGE',
            "! to_BPAddrDepdntIntlLocNumber
            to_bpaddr_depdnt_intl_loc TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPADDR_DEPDNT_INTL_LOC',
            "! to_BPIntlAddressVersion
            to_bpintl_address_version TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPINTL_ADDRESS_VERSION',
            "! to_EmailAddress
            to_email_address          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EMAIL_ADDRESS',
            "! to_FaxNumber
            to_fax_number             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_FAX_NUMBER',
            "! to_MobilePhoneNumber
            to_mobile_phone_number    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_MOBILE_PHONE_NUMBER',
            "! to_PhoneNumber
            to_phone_number           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PHONE_NUMBER',
            "! to_URLAddress
            to_urladdress             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_URLADDRESS',
          END OF navigation,
        END OF a_business_partner_addre_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerAliasType</p>
        "! See also structure type {@link ..tys_a_business_partner_alias_t}
        BEGIN OF a_business_partner_alias_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_alias_t,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerBankType</p>
        "! See also structure type {@link ..tys_a_business_partner_bank_ty}
        BEGIN OF a_business_partner_bank_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_bank_ty,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerContactType</p>
        "! See also structure type {@link ..tys_a_business_partner_conta_2}
        BEGIN OF a_business_partner_conta_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_ContactAddress
            to_contact_address      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CONTACT_ADDRESS',
            "! to_ContactRelationship
            to_contact_relationship TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CONTACT_RELATIONSHIP',
          END OF navigation,
        END OF a_business_partner_conta_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerIsBankType</p>
        "! See also structure type {@link ..tys_a_business_partner_is_ba_2}
        BEGIN OF a_business_partner_is_ba_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_is_ba_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerPaymentCardType</p>
        "! See also structure type {@link ..tys_a_business_partner_payme_2}
        BEGIN OF a_business_partner_payme_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_payme_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerRatingType</p>
        "! See also structure type {@link ..tys_a_business_partner_ratin_2}
        BEGIN OF a_business_partner_ratin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_ratin_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerRoleType</p>
        "! See also structure type {@link ..tys_a_business_partner_role_ty}
        BEGIN OF a_business_partner_role_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_role_ty,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerTaxNumberType</p>
        "! See also structure type {@link ..tys_a_business_partner_tax_n_2}
        BEGIN OF a_business_partner_tax_n_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_business_partner_tax_n_2,
        "! <p class="shorttext synchronized">Internal names for A_BusinessPartnerType</p>
        "! See also structure type {@link ..tys_a_business_partner_type}
        BEGIN OF a_business_partner_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_AddressIndependentEmail
            to_address_independent_ema TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_INDEPENDENT_EMA',
            "! to_AddressIndependentFax
            to_address_independent_fax TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_INDEPENDENT_FAX',
            "! to_AddressIndependentMobile
            to_address_independent_mob TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_INDEPENDENT_MOB',
            "! to_AddressIndependentPhone
            to_address_independent_pho TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_INDEPENDENT_PHO',
            "! to_AddressIndependentWebsite
            to_address_independent_web TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS_INDEPENDENT_WEB',
            "! to_BPCreditWorthiness
            to_bpcredit_worthiness     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPCREDIT_WORTHINESS',
            "! to_BPDataController
            to_bpdata_controller       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPDATA_CONTROLLER',
            "! to_BPEmployment
            to_bpemployment            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPEMPLOYMENT',
            "! to_BPFinServicesReporting
            to_bpfin_services_reportin TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPFIN_SERVICES_REPORTIN',
            "! to_BPFiscalYearInformation
            to_bpfiscal_year_informati TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPFISCAL_YEAR_INFORMATI',
            "! to_BPRelationship
            to_bprelationship          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BPRELATIONSHIP',
            "! to_BusinessPartner
            to_business_partner        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER',
            "! to_BusinessPartnerAddress
            to_business_partner_addres TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_ADDRES',
            "! to_BusinessPartnerAlias
            to_business_partner_alias  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_ALIAS',
            "! to_BusinessPartnerBank
            to_business_partner_bank   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_BANK',
            "! to_BusinessPartnerContact
            to_business_partner_contac TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_CONTAC',
            "! to_BusinessPartnerIsBank
            to_business_partner_is_ban TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_IS_BAN',
            "! to_BusinessPartnerRating
            to_business_partner_rating TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_RATING',
            "! to_BusinessPartnerRole
            to_business_partner_role   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_ROLE',
            "! to_BusinessPartnerTax
            to_business_partner_tax    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUSINESS_PARTNER_TAX',
            "! to_BusPartAddrDepdntTaxNmbr
            to_bus_part_addr_depdnt_ta TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUS_PART_ADDR_DEPDNT_TA',
            "! to_BuPaIdentification
            to_bu_pa_identification    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BU_PA_IDENTIFICATION',
            "! to_BuPaIndustry
            to_bu_pa_industry          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BU_PA_INDUSTRY',
            "! to_Customer
            to_customer                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER',
            "! to_PaymentCard
            to_payment_card            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PAYMENT_CARD',
            "! to_Supplier
            to_supplier                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER',
          END OF navigation,
        END OF a_business_partner_type,
        "! <p class="shorttext synchronized">Internal names for A_BusPartAddrDepdntTaxNmbrType</p>
        "! See also structure type {@link ..tys_a_bus_part_addr_depdnt_t_2}
        BEGIN OF a_bus_part_addr_depdnt_t_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bus_part_addr_depdnt_t_2,
        "! <p class="shorttext synchronized">Internal names for A_BuPaAddressUsageType</p>
        "! See also structure type {@link ..tys_a_bu_pa_address_usage_type}
        BEGIN OF a_bu_pa_address_usage_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bu_pa_address_usage_type,
        "! <p class="shorttext synchronized">Internal names for A_BuPaIdentificationType</p>
        "! See also structure type {@link ..tys_a_bu_pa_identification_typ}
        BEGIN OF a_bu_pa_identification_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bu_pa_identification_typ,
        "! <p class="shorttext synchronized">Internal names for A_BuPaIndustryType</p>
        "! See also structure type {@link ..tys_a_bu_pa_industry_type}
        BEGIN OF a_bu_pa_industry_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bu_pa_industry_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerCompanyTextType</p>
        "! See also structure type {@link ..tys_a_customer_company_text_ty}
        BEGIN OF a_customer_company_text_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_company_text_ty,
        "! <p class="shorttext synchronized">Internal names for A_CustomerCompanyType</p>
        "! See also structure type {@link ..tys_a_customer_company_type}
        BEGIN OF a_customer_company_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_CompanyText
            to_company_text     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_COMPANY_TEXT',
            "! to_CustomerDunning
            to_customer_dunning TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_DUNNING',
            "! to_WithHoldingTax
            to_with_holding_tax TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_WITH_HOLDING_TAX',
          END OF navigation,
        END OF a_customer_company_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerDunningType</p>
        "! See also structure type {@link ..tys_a_customer_dunning_type}
        BEGIN OF a_customer_dunning_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_dunning_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerSalesAreaTaxType</p>
        "! See also structure type {@link ..tys_a_customer_sales_area_ta_2}
        BEGIN OF a_customer_sales_area_ta_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SlsAreaAddrDepdntTax
            to_sls_area_addr_depdnt_ta TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_AREA_ADDR_DEPDNT_TA',
          END OF navigation,
        END OF a_customer_sales_area_ta_2,
        "! <p class="shorttext synchronized">Internal names for A_CustomerSalesAreaTextType</p>
        "! See also structure type {@link ..tys_a_customer_sales_area_te_2}
        BEGIN OF a_customer_sales_area_te_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_sales_area_te_2,
        "! <p class="shorttext synchronized">Internal names for A_CustomerSalesAreaType</p>
        "! See also structure type {@link ..tys_a_customer_sales_area_type}
        BEGIN OF a_customer_sales_area_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_PartnerFunction
            to_partner_function        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER_FUNCTION',
            "! to_SalesAreaTax
            to_sales_area_tax          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_AREA_TAX',
            "! to_SalesAreaText
            to_sales_area_text         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_AREA_TEXT',
            "! to_SlsAreaAddrDepdntInfo
            to_sls_area_addr_depdnt_in TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SLS_AREA_ADDR_DEPDNT_IN',
          END OF navigation,
        END OF a_customer_sales_area_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerTaxGroupingType</p>
        "! See also structure type {@link ..tys_a_customer_tax_grouping_ty}
        BEGIN OF a_customer_tax_grouping_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_tax_grouping_ty,
        "! <p class="shorttext synchronized">Internal names for A_CustomerTextType</p>
        "! See also structure type {@link ..tys_a_customer_text_type}
        BEGIN OF a_customer_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_text_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerType</p>
        "! See also structure type {@link ..tys_a_customer_type}
        BEGIN OF a_customer_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_CustomerCompany
            to_customer_company        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_COMPANY',
            "! to_CustomerSalesArea
            to_customer_sales_area     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_SALES_AREA',
            "! to_CustomerTaxGrouping
            to_customer_tax_grouping   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_TAX_GROUPING',
            "! to_CustomerText
            to_customer_text           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_TEXT',
            "! to_CustomerUnloadingPoint
            to_customer_unloading_poin TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUSTOMER_UNLOADING_POIN',
            "! to_CustAddrDepdntExtIdentifier
            to_cust_addr_depdnt_ext_id TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUST_ADDR_DEPDNT_EXT_ID',
            "! to_CustAddrDepdntInformation
            to_cust_addr_depdnt_inform TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUST_ADDR_DEPDNT_INFORM',
            "! to_CustUnldgPtAddrDepdntInfo
            to_cust_unldg_pt_addr_depd TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CUST_UNLDG_PT_ADDR_DEPD',
          END OF navigation,
        END OF a_customer_type,
        "! <p class="shorttext synchronized">Internal names for A_CustomerUnloadingPointType</p>
        "! See also structure type {@link ..tys_a_customer_unloading_poi_2}
        BEGIN OF a_customer_unloading_poi_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_unloading_poi_2,
        "! <p class="shorttext synchronized">Internal names for A_CustomerWithHoldingTaxType</p>
        "! See also structure type {@link ..tys_a_customer_with_holding__2}
        BEGIN OF a_customer_with_holding__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_customer_with_holding__2,
        "! <p class="shorttext synchronized">Internal names for A_CustAddrDepdntExtIdentifierType</p>
        "! See also structure type {@link ..tys_a_cust_addr_depdnt_ext_i_2}
        BEGIN OF a_cust_addr_depdnt_ext_i_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_addr_depdnt_ext_i_2,
        "! <p class="shorttext synchronized">Internal names for A_CustAddrDepdntInformationType</p>
        "! See also structure type {@link ..tys_a_cust_addr_depdnt_infor_2}
        BEGIN OF a_cust_addr_depdnt_infor_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_addr_depdnt_infor_2,
        "! <p class="shorttext synchronized">Internal names for A_CustSalesPartnerFuncType</p>
        "! See also structure type {@link ..tys_a_cust_sales_partner_fun_2}
        BEGIN OF a_cust_sales_partner_fun_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_sales_partner_fun_2,
        "! <p class="shorttext synchronized">Internal names for A_CustSlsAreaAddrDepdntInfoType</p>
        "! See also structure type {@link ..tys_a_cust_sls_area_addr_dep_3}
        BEGIN OF a_cust_sls_area_addr_dep_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_sls_area_addr_dep_3,
        "! <p class="shorttext synchronized">Internal names for A_CustSlsAreaAddrDepdntTaxInfoType</p>
        "! See also structure type {@link ..tys_a_cust_sls_area_addr_dep_4}
        BEGIN OF a_cust_sls_area_addr_dep_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_sls_area_addr_dep_4,
        "! <p class="shorttext synchronized">Internal names for A_CustUnldgPtAddrDepdntInfoType</p>
        "! See also structure type {@link ..tys_a_cust_unldg_pt_addr_dep_2}
        BEGIN OF a_cust_unldg_pt_addr_dep_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_cust_unldg_pt_addr_dep_2,
        "! <p class="shorttext synchronized">Internal names for A_SupplierCompanyTextType</p>
        "! See also structure type {@link ..tys_a_supplier_company_text_ty}
        BEGIN OF a_supplier_company_text_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_company_text_ty,
        "! <p class="shorttext synchronized">Internal names for A_SupplierCompanyType</p>
        "! See also structure type {@link ..tys_a_supplier_company_type}
        BEGIN OF a_supplier_company_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_CompanyText
            to_company_text            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_COMPANY_TEXT',
            "! to_Supplier
            to_supplier                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER',
            "! to_SupplierDunning
            to_supplier_dunning        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER_DUNNING',
            "! to_SupplierWithHoldingTax
            to_supplier_with_holding_t TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER_WITH_HOLDING_T',
          END OF navigation,
        END OF a_supplier_company_type,
        "! <p class="shorttext synchronized">Internal names for A_SupplierDunningType</p>
        "! See also structure type {@link ..tys_a_supplier_dunning_type}
        BEGIN OF a_supplier_dunning_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_dunning_type,
        "! <p class="shorttext synchronized">Internal names for A_SupplierPartnerFuncType</p>
        "! See also structure type {@link ..tys_a_supplier_partner_func_ty}
        BEGIN OF a_supplier_partner_func_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_partner_func_ty,
        "! <p class="shorttext synchronized">Internal names for A_SupplierPurchasingOrgType</p>
        "! See also structure type {@link ..tys_a_supplier_purchasing_or_3}
        BEGIN OF a_supplier_purchasing_or_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_PartnerFunction
            to_partner_function    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER_FUNCTION',
            "! to_PurchasingOrgText
            to_purchasing_org_text TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PURCHASING_ORG_TEXT',
          END OF navigation,
        END OF a_supplier_purchasing_or_3,
        "! <p class="shorttext synchronized">Internal names for A_SupplierPurchasingOrgTextType</p>
        "! See also structure type {@link ..tys_a_supplier_purchasing_or_4}
        BEGIN OF a_supplier_purchasing_or_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_purchasing_or_4,
        "! <p class="shorttext synchronized">Internal names for A_SupplierTextType</p>
        "! See also structure type {@link ..tys_a_supplier_text_type}
        BEGIN OF a_supplier_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_text_type,
        "! <p class="shorttext synchronized">Internal names for A_SupplierType</p>
        "! See also structure type {@link ..tys_a_supplier_type}
        BEGIN OF a_supplier_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SupplierCompany
            to_supplier_company        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER_COMPANY',
            "! to_SupplierPurchasingOrg
            to_supplier_purchasing_org TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER_PURCHASING_ORG',
            "! to_SupplierText
            to_supplier_text           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUPPLIER_TEXT',
          END OF navigation,
        END OF a_supplier_type,
        "! <p class="shorttext synchronized">Internal names for A_SupplierWithHoldingTaxType</p>
        "! See also structure type {@link ..tys_a_supplier_with_holding__2}
        BEGIN OF a_supplier_with_holding__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_supplier_with_holding__2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define DuplicateCheckResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_duplicate_check_result RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_AddressEmailAddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_address_email_address_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_AddressFaxNumberType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_address_fax_number_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_AddressHomePageURLType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_address_home_page_urltyp RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_AddressPhoneNumberType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_address_phone_number_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddressIndependentEmailType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddress_independent__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddressIndependentFaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddress_independent__3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddressIndependentMobileType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddress_independent__4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddressIndependentPhoneType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddress_independent__5 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddressIndependentWebsiteType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddress_independent__6 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPAddrDepdntIntlLocNumberType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpaddr_depdnt_intl_loc_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactPersonEmlAddrType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_person_eml_a_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactPersonFaxNmbrType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_person_fax_n_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactPersonMblNmbrType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_person_mbl_n_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactPersonTelNmbrType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_person_tel_n_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactPersonWbsteURLType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_person_wbste_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactToAddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_to_address_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPContactToFuncAndDeptType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcontact_to_func_and__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPCreditWorthinessType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpcredit_worthiness_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPDataControllerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpdata_controller_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPEmploymentType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpemployment_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPFinancialServicesExtnType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpfinancial_services_e_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPFinancialServicesReportingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpfinancial_services_r_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPFiscalYearInformationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpfiscal_year_informat_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPIntlAddressVersionType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bpintl_address_version_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BPRelationshipType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bprelationship_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerAddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_addre_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerAliasType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_alias_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerBankType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_bank_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerContactType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_conta_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerIsBankType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_is_ba_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerPaymentCardType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_payme_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerRatingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_ratin_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerRoleType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_role_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerTaxNumberType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_tax_n_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusinessPartnerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_business_partner_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusPartAddrDepdntTaxNmbrType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bus_part_addr_depdnt_t_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BuPaAddressUsageType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bu_pa_address_usage_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BuPaIdentificationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bu_pa_identification_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BuPaIndustryType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bu_pa_industry_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerCompanyTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_company_text_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerCompanyType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_company_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerDunningType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_dunning_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerSalesAreaTaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_sales_area_ta_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerSalesAreaTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_sales_area_te_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerSalesAreaType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_sales_area_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerTaxGroupingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_tax_grouping_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerUnloadingPointType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_unloading_poi_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustomerWithHoldingTaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_customer_with_holding__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustAddrDepdntExtIdentifierType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_addr_depdnt_ext_i_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustAddrDepdntInformationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_addr_depdnt_infor_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustSalesPartnerFuncType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_sales_partner_fun_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustSlsAreaAddrDepdntInfoType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_sls_area_addr_dep_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustSlsAreaAddrDepdntTaxInfoType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_sls_area_addr_dep_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CustUnldgPtAddrDepdntInfoType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cust_unldg_pt_addr_dep_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierCompanyTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_company_text_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierCompanyType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_company_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierDunningType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_dunning_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierPartnerFuncType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_partner_func_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierPurchasingOrgType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_purchasing_or_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierPurchasingOrgTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_purchasing_or_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SupplierWithHoldingTaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_supplier_with_holding__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define DuplicateCheck</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_duplicate_check RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZNSCM_ARBA_BP_GEN IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_BUSINESS_PARTNER' ) ##NO_TEXT.

    def_duplicate_check_result( ).
    def_a_address_email_address_ty( ).
    def_a_address_fax_number_type( ).
    def_a_address_home_page_urltyp( ).
    def_a_address_phone_number_typ( ).
    def_a_bpaddress_independent__2( ).
    def_a_bpaddress_independent__3( ).
    def_a_bpaddress_independent__4( ).
    def_a_bpaddress_independent__5( ).
    def_a_bpaddress_independent__6( ).
    def_a_bpaddr_depdnt_intl_loc_2( ).
    def_a_bpcontact_person_eml_a_2( ).
    def_a_bpcontact_person_fax_n_2( ).
    def_a_bpcontact_person_mbl_n_2( ).
    def_a_bpcontact_person_tel_n_2( ).
    def_a_bpcontact_person_wbste_2( ).
    def_a_bpcontact_to_address_typ( ).
    def_a_bpcontact_to_func_and__2( ).
    def_a_bpcredit_worthiness_type( ).
    def_a_bpdata_controller_type( ).
    def_a_bpemployment_type( ).
    def_a_bpfinancial_services_e_2( ).
    def_a_bpfinancial_services_r_2( ).
    def_a_bpfiscal_year_informat_2( ).
    def_a_bpintl_address_version_t( ).
    def_a_bprelationship_type( ).
    def_a_business_partner_addre_2( ).
    def_a_business_partner_alias_t( ).
    def_a_business_partner_bank_ty( ).
    def_a_business_partner_conta_2( ).
    def_a_business_partner_is_ba_2( ).
    def_a_business_partner_payme_2( ).
    def_a_business_partner_ratin_2( ).
    def_a_business_partner_role_ty( ).
    def_a_business_partner_tax_n_2( ).
    def_a_business_partner_type( ).
    def_a_bus_part_addr_depdnt_t_2( ).
    def_a_bu_pa_address_usage_type( ).
    def_a_bu_pa_identification_typ( ).
    def_a_bu_pa_industry_type( ).
    def_a_customer_company_text_ty( ).
    def_a_customer_company_type( ).
    def_a_customer_dunning_type( ).
    def_a_customer_sales_area_ta_2( ).
    def_a_customer_sales_area_te_2( ).
    def_a_customer_sales_area_type( ).
    def_a_customer_tax_grouping_ty( ).
    def_a_customer_text_type( ).
    def_a_customer_type( ).
    def_a_customer_unloading_poi_2( ).
    def_a_customer_with_holding__2( ).
    def_a_cust_addr_depdnt_ext_i_2( ).
    def_a_cust_addr_depdnt_infor_2( ).
    def_a_cust_sales_partner_fun_2( ).
    def_a_cust_sls_area_addr_dep_3( ).
    def_a_cust_sls_area_addr_dep_4( ).
    def_a_cust_unldg_pt_addr_dep_2( ).
    def_a_supplier_company_text_ty( ).
    def_a_supplier_company_type( ).
    def_a_supplier_dunning_type( ).
    def_a_supplier_partner_func_ty( ).
    def_a_supplier_purchasing_or_3( ).
    def_a_supplier_purchasing_or_4( ).
    def_a_supplier_text_type( ).
    def_a_supplier_type( ).
    def_a_supplier_with_holding__2( ).
    def_duplicate_check( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'INPUT'
                            iv_element             = VALUE tys_types_for_prim_types-input( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_a_address_email_address_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_ADDRESS_EMAIL_ADDRESS_TY'
                                    is_structure              = VALUE tys_a_address_email_address_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_AddressEmailAddressType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_ADDRESS_EMAIL_ADDRESS' ).
    lo_entity_set->set_edm_name( 'A_AddressEmailAddress' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultEmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'SearchEmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_COMMUNICATION_REMA' ).
    lo_primitive_property->set_edm_name( 'AddressCommunicationRemarkText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_address_fax_number_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_ADDRESS_FAX_NUMBER_TYPE'
                                    is_structure              = VALUE tys_a_address_fax_number_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_AddressFaxNumberType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_ADDRESS_FAX_NUMBER' ).
    lo_entity_set->set_edm_name( 'A_AddressFaxNumber' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'FaxCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'FaxNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_COMMUNICATION_REMA' ).
    lo_primitive_property->set_edm_name( 'AddressCommunicationRemarkText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_address_home_page_urltyp.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_ADDRESS_HOME_PAGE_URLTYP'
                                    is_structure              = VALUE tys_a_address_home_page_urltyp( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_AddressHomePageURLType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_ADDRESS_HOME_PAGE_URL' ).
    lo_entity_set->set_edm_name( 'A_AddressHomePageURL' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_URLADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultURLAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_URLADDRESS' ).
    lo_primitive_property->set_edm_name( 'SearchURLAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_COMMUNICATION_REMA' ).
    lo_primitive_property->set_edm_name( 'AddressCommunicationRemarkText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'URLFIELD_LENGTH' ).
    lo_primitive_property->set_edm_name( 'URLFieldLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEBSITE_URL' ).
    lo_primitive_property->set_edm_name( 'WebsiteURL' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2048 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_address_phone_number_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_ADDRESS_PHONE_NUMBER_TYP'
                                    is_structure              = VALUE tys_a_address_phone_number_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_AddressPhoneNumberType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_ADDRESS_PHONE_NUMBER' ).
    lo_entity_set->set_edm_name( 'A_AddressPhoneNumber' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_LOCATION_COUNT' ).
    lo_primitive_property->set_edm_name( 'DestinationLocationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_COMMUNICATION_REMA' ).
    lo_primitive_property->set_edm_name( 'AddressCommunicationRemarkText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpaddress_independent__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDRESS_INDEPENDENT__2'
                                    is_structure              = VALUE tys_a_bpaddress_independent__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddressIndependentEmailType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDRESS_INDEPENDENT_EM' ).
    lo_entity_set->set_edm_name( 'A_BPAddressIndependentEmail' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultEmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_bpaddress_independent__3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDRESS_INDEPENDENT__3'
                                    is_structure              = VALUE tys_a_bpaddress_independent__3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddressIndependentFaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDRESS_INDEPENDENT_FA' ).
    lo_entity_set->set_edm_name( 'A_BPAddressIndependentFax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'FaxCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_AREA_CODE_SUBSCRIBER_N' ).
    lo_primitive_property->set_edm_name( 'FaxAreaCodeSubscriberNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'FaxNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_bpaddress_independent__4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDRESS_INDEPENDENT__4'
                                    is_structure              = VALUE tys_a_bpaddress_independent__4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddressIndependentMobileType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDRESS_INDEPENDENT_MO' ).
    lo_entity_set->set_edm_name( 'A_BPAddressIndependentMobile' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_PHONE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'MobilePhoneCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'MobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_bpaddress_independent__5.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDRESS_INDEPENDENT__5'
                                    is_structure              = VALUE tys_a_bpaddress_independent__5( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddressIndependentPhoneType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDRESS_INDEPENDENT_PH' ).
    lo_entity_set->set_edm_name( 'A_BPAddressIndependentPhone' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_LOCATION_COUNT' ).
    lo_primitive_property->set_edm_name( 'DestinationLocationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_bpaddress_independent__6.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDRESS_INDEPENDENT__6'
                                    is_structure              = VALUE tys_a_bpaddress_independent__6( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddressIndependentWebsiteType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDRESS_INDEPENDENT_WE' ).
    lo_entity_set->set_edm_name( 'A_BPAddressIndependentWebsite' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_URLADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultURLAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'URLFIELD_LENGTH' ).
    lo_primitive_property->set_edm_name( 'URLFieldLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEBSITE_URL' ).
    lo_primitive_property->set_edm_name( 'WebsiteURL' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2048 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpaddr_depdnt_intl_loc_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPADDR_DEPDNT_INTL_LOC_2'
                                    is_structure              = VALUE tys_a_bpaddr_depdnt_intl_loc_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPAddrDepdntIntlLocNumberType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPADDR_DEPDNT_INTL_LOC_N' ).
    lo_entity_set->set_edm_name( 'A_BPAddrDepdntIntlLocNumber' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_NUM' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_2' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_3' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_person_eml_a_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_PERSON_EML_A_2'
                                    is_structure              = VALUE tys_a_bpcontact_person_eml_a_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactPersonEmlAddrType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_PERSON_EML_ADD' ).
    lo_entity_set->set_edm_name( 'A_BPContactPersonEmlAddr' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultEmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'SearchEmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_person_fax_n_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_PERSON_FAX_N_2'
                                    is_structure              = VALUE tys_a_bpcontact_person_fax_n_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactPersonFaxNmbrType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_PERSON_FAX_NMB' ).
    lo_entity_set->set_edm_name( 'A_BPContactPersonFaxNmbr' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'FaxCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_AREA_CODE_SUBSCRIBER_N' ).
    lo_primitive_property->set_edm_name( 'FaxAreaCodeSubscriberNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'FaxNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_person_mbl_n_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_PERSON_MBL_N_2'
                                    is_structure              = VALUE tys_a_bpcontact_person_mbl_n_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactPersonMblNmbrType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_PERSON_MBL_NMB' ).
    lo_entity_set->set_edm_name( 'A_BPContactPersonMblNmbr' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_LOCATION_COUNT' ).
    lo_primitive_property->set_edm_name( 'DestinationLocationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'MobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_person_tel_n_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_PERSON_TEL_N_2'
                                    is_structure              = VALUE tys_a_bpcontact_person_tel_n_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactPersonTelNmbrType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_PERSON_TEL_NMB' ).
    lo_entity_set->set_edm_name( 'A_BPContactPersonTelNmbr' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'IsDefaultPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_LOCATION_COUNT' ).
    lo_primitive_property->set_edm_name( 'DestinationLocationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_person_wbste_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_PERSON_WBSTE_2'
                                    is_structure              = VALUE tys_a_bpcontact_person_wbste_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactPersonWbsteURLType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_PERSON_WBSTE_U' ).
    lo_entity_set->set_edm_name( 'A_BPContactPersonWbsteURL' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDINAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'OrdinalNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_URLADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultURLAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_URLADDRESS' ).
    lo_primitive_property->set_edm_name( 'SearchURLAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMM_NUMBER_IS_NOT_USED' ).
    lo_primitive_property->set_edm_name( 'CommNumberIsNotUsed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'URLFIELD_LENGTH' ).
    lo_primitive_property->set_edm_name( 'URLFieldLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEBSITE_URL' ).
    lo_primitive_property->set_edm_name( 'WebsiteURL' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2048 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcontact_to_address_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_TO_ADDRESS_TYP'
                                    is_structure              = VALUE tys_a_bpcontact_to_address_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactToAddressType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_TO_ADDRESS' ).
    lo_entity_set->set_edm_name( 'A_BPContactToAddress' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_NUMBER' ).
    lo_primitive_property->set_edm_name( 'AddressNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_STREET_PREFIX_N' ).
    lo_primitive_property->set_edm_name( 'AdditionalStreetPrefixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_STREET_SUFFIX_N' ).
    lo_primitive_property->set_edm_name( 'AdditionalStreetSuffixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_TIME_ZONE' ).
    lo_primitive_property->set_edm_name( 'AddressTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARE_OF_NAME' ).
    lo_primitive_property->set_edm_name( 'CareOfName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT' ).
    lo_primitive_property->set_edm_name( 'District' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'FullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOME_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'HomeCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER_SUPPLEMENT_TE' ).
    lo_primitive_property->set_edm_name( 'HouseNumberSupplementText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_REGION' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_IS_WITHOUT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'POBoxIsWithoutNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_LOBBY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxLobbyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRFRD_COMM_MEDIUM_TYPE' ).
    lo_primitive_property->set_edm_name( 'PrfrdCommMediumType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_BUILDING' ).
    lo_primitive_property->set_edm_name( 'ContactPersonBuilding' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_PRFRD_COMM' ).
    lo_primitive_property->set_edm_name( 'ContactPersonPrfrdCommMedium' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_RELATIONSHIP_DEPAR' ).
    lo_primitive_property->set_edm_name( 'ContactRelationshipDepartment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_RELATIONSHIP_FUNCT' ).
    lo_primitive_property->set_edm_name( 'ContactRelationshipFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_SHORT_NAME' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceShortName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FLOOR' ).
    lo_primitive_property->set_edm_name( 'Floor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INHOUSE_MAIL' ).
    lo_primitive_property->set_edm_name( 'InhouseMail' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DEFAULT_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'IsDefaultAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROOM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RoomNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PersonNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELSHP_CNTCT_PERSN_EM' ).
    lo_navigation_property->set_edm_name( 'to_BPRelshpCntctPersnEmailAddr' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_PERSON_EML_A_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELSHP_CNTCT_PERSN_FA' ).
    lo_navigation_property->set_edm_name( 'to_BPRelshpCntctPersnFaxNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_PERSON_FAX_N_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELSHP_CNTCT_PERSN_MB' ).
    lo_navigation_property->set_edm_name( 'to_BPRelshpCntctPersnMblNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_PERSON_MBL_N_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELSHP_CNTCT_PERSN_TE' ).
    lo_navigation_property->set_edm_name( 'to_BPRelshpCntctPersnTelNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_PERSON_TEL_N_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELSHP_CNTCT_PERSN_WB' ).
    lo_navigation_property->set_edm_name( 'to_BPRelshpCntctPersnWbsteURL' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_PERSON_WBSTE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EMAIL_ADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_EmailAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_EMAIL_ADDRESS_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_FAX_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_FaxNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_FAX_NUMBER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_MOBILE_PHONE_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_MobilePhoneNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_PHONE_NUMBER_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PHONE_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_PhoneNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_PHONE_NUMBER_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_URLADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_URLAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_HOME_PAGE_URLTYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_bpcontact_to_func_and__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCONTACT_TO_FUNC_AND__2'
                                    is_structure              = VALUE tys_a_bpcontact_to_func_and__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPContactToFuncAndDeptType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCONTACT_TO_FUNC_AND_DE' ).
    lo_entity_set->set_edm_name( 'A_BPContactToFuncAndDept' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_AUTHORITY_T' ).
    lo_primitive_property->set_edm_name( 'ContactPersonAuthorityType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_DEPARTMENT' ).
    lo_primitive_property->set_edm_name( 'ContactPersonDepartment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_DEPARTMEN_2' ).
    lo_primitive_property->set_edm_name( 'ContactPersonDepartmentName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'ContactPersonFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_FUNCTION_NA' ).
    lo_primitive_property->set_edm_name( 'ContactPersonFunctionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_REMARK_TEXT' ).
    lo_primitive_property->set_edm_name( 'ContactPersonRemarkText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON_VIPTYPE' ).
    lo_primitive_property->set_edm_name( 'ContactPersonVIPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'FaxNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_EXTENSION' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberExtension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'RelationshipCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpcredit_worthiness_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPCREDIT_WORTHINESS_TYPE'
                                    is_structure              = VALUE tys_a_bpcredit_worthiness_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPCreditWorthinessType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPCREDIT_WORTHINESS' ).
    lo_entity_set->set_edm_name( 'A_BPCreditWorthiness' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_PART_CREDIT_STANDING' ).
    lo_primitive_property->set_edm_name( 'BusPartCreditStanding' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_STATUS' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_RATING_AGENCY' ).
    lo_primitive_property->set_edm_name( 'CreditRatingAgency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_COMMENT' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingComment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_DATE' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_RATING' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingRating' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLEGAL_PROCEEDING_STATUS' ).
    lo_primitive_property->set_edm_name( 'BPLegalProceedingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLGL_PROCEEDING_INITIATIO' ).
    lo_primitive_property->set_edm_name( 'BPLglProceedingInitiationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_UNDER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsUnderOath' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_OATH_DATE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerOathDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_BANKRU' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsBankrupt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_BANKRUPTC' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerBankruptcyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFORECLOSURE_IS_INITIATED' ).
    lo_primitive_property->set_edm_name( 'BPForeclosureIsInitiated' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFORECLOSURE_DATE' ).
    lo_primitive_property->set_edm_name( 'BPForeclosureDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCRDT_WRTHNSS_ACCESS_CHK' ).
    lo_primitive_property->set_edm_name( 'BPCrdtWrthnssAccessChkIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpdata_controller_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPDATA_CONTROLLER_TYPE'
                                    is_structure              = VALUE tys_a_bpdata_controller_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPDataControllerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPDATA_CONTROLLER' ).
    lo_entity_set->set_edm_name( 'A_BPDataController' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATA_CONTROLLER' ).
    lo_primitive_property->set_edm_name( 'DataController' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURPOSE_FOR_PERSONAL_DATA' ).
    lo_primitive_property->set_edm_name( 'PurposeForPersonalData' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATA_CONTROL_ASSIGNMENT_ST' ).
    lo_primitive_property->set_edm_name( 'DataControlAssignmentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPDATA_CONTROLLER_IS_DERIV' ).
    lo_primitive_property->set_edm_name( 'BPDataControllerIsDerived' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURPOSE_DERIVED' ).
    lo_primitive_property->set_edm_name( 'PurposeDerived' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURPOSE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PurposeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PURPOSE_FLAG' ).
    lo_primitive_property->set_edm_name( 'BusinessPurposeFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpemployment_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPEMPLOYMENT_TYPE'
                                    is_structure              = VALUE tys_a_bpemployment_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPEmploymentType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPEMPLOYMENT' ).
    lo_entity_set->set_edm_name( 'A_BPEmployment' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPEMPLOYMENT_START_DATE' ).
    lo_primitive_property->set_edm_name( 'BPEmploymentStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPEMPLOYMENT_END_DATE' ).
    lo_primitive_property->set_edm_name( 'BPEmploymentEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPEMPLOYMENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'BPEmploymentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_PART_EMPLR_INDSTRY_COD' ).
    lo_primitive_property->set_edm_name( 'BusPartEmplrIndstryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_EMPLOYER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerEmployerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_OCCUPATIO' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerOccupationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpfinancial_services_e_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPFINANCIAL_SERVICES_E_2'
                                    is_structure              = VALUE tys_a_bpfinancial_services_e_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPFinancialServicesExtnType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPFINANCIAL_SERVICES_EXT' ).
    lo_entity_set->set_edm_name( 'A_BPFinancialServicesExtn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_VIP' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsVIP' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRADING_PARTNER' ).
    lo_primitive_property->set_edm_name( 'TradingPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FACTORY_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'FactoryCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_OFFICE_CO' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerOfficeCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_OFFICE_RE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerOfficeRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPREGISTERED_OFFICE_NAME' ).
    lo_primitive_property->set_edm_name( 'BPRegisteredOfficeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPBALANCE_SHEET_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'BPBalanceSheetCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLAST_CPTL_INCR_AMT_IN_BA' ).
    lo_primitive_property->set_edm_name( 'BPLastCptlIncrAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLAST_CAPITAL_INCREASE_YE' ).
    lo_primitive_property->set_edm_name( 'BPLastCapitalIncreaseYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPBALANCE_SHEET_DISPLAY_TY' ).
    lo_primitive_property->set_edm_name( 'BPBalanceSheetDisplayType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_CITIZENSH' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCitizenship' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPMARITAL_PROPERTY_REGIME' ).
    lo_primitive_property->set_edm_name( 'BPMaritalPropertyRegime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_INCOME_CU' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIncomeCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPNUMBER_OF_CHILDREN' ).
    lo_primitive_property->set_edm_name( 'BPNumberOfChildren' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPNUMBER_OF_HOUSEHOLD_MEMB' ).
    lo_primitive_property->set_edm_name( 'BPNumberOfHouseholdMembers' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_NET_INC_AMT_IN_IN' ).
    lo_primitive_property->set_edm_name( 'BPAnnualNetIncAmtInIncomeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPMONTHLY_NET_INC_AMT_IN_I' ).
    lo_primitive_property->set_edm_name( 'BPMonthlyNetIncAmtInIncomeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_NET_INCOME_YEAR' ).
    lo_primitive_property->set_edm_name( 'BPAnnualNetIncomeYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPMONTHLY_NET_INCOME_MONTH' ).
    lo_primitive_property->set_edm_name( 'BPMonthlyNetIncomeMonth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPMONTHLY_NET_INCOME_YEAR' ).
    lo_primitive_property->set_edm_name( 'BPMonthlyNetIncomeYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPPLACE_OF_DEATH_NAME' ).
    lo_primitive_property->set_edm_name( 'BPPlaceOfDeathName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_IS_UNWANTED' ).
    lo_primitive_property->set_edm_name( 'CustomerIsUnwanted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDESIRABILITY_REASON' ).
    lo_primitive_property->set_edm_name( 'UndesirabilityReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDESIRABILITY_COMMENT' ).
    lo_primitive_property->set_edm_name( 'UndesirabilityComment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CUSTOMER_CONTACT_DATE' ).
    lo_primitive_property->set_edm_name( 'LastCustomerContactDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGROUPING_CHARACTER' ).
    lo_primitive_property->set_edm_name( 'BPGroupingCharacter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLETTER_SALUTATION' ).
    lo_primitive_property->set_edm_name( 'BPLetterSalutation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_TARGET_GR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerTargetGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_EMPLOYEE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerEmployeeGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_EMPLOY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsEmployee' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTERMN_BUS_RELATIONS_BANK' ).
    lo_primitive_property->set_edm_name( 'BPTermnBusRelationsBankDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_bpfinancial_services_r_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPFINANCIAL_SERVICES_R_2'
                                    is_structure              = VALUE tys_a_bpfinancial_services_r_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPFinancialServicesReportingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPFINANCIAL_SERVICES_REP' ).
    lo_entity_set->set_edm_name( 'A_BPFinancialServicesReporting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIS_NON_RESIDENT' ).
    lo_primitive_property->set_edm_name( 'BPIsNonResident' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPNON_RESIDENCY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'BPNonResidencyStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIS_MULTIMILLION_LOAN_REC' ).
    lo_primitive_property->set_edm_name( 'BPIsMultimillionLoanRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLOAN_REPORTING_BORROWER' ).
    lo_primitive_property->set_edm_name( 'BPLoanReportingBorrowerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLOAN_RPTG_BORROWER_ENTIT' ).
    lo_primitive_property->set_edm_name( 'BPLoanRptgBorrowerEntityNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_REVIEW' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingReview' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCREDIT_STANDING_REVIEW_D' ).
    lo_primitive_property->set_edm_name( 'BPCreditStandingReviewDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_LOAN_TO_M' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerLoanToManager' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCOMPANY_RELATIONSHIP' ).
    lo_primitive_property->set_edm_name( 'BPCompanyRelationship' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLOAN_REPORTING_CREDITOR' ).
    lo_primitive_property->set_edm_name( 'BPLoanReportingCreditorNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPOE_NBIDENT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPOeNBIdentNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPOE_NBTARGET_GROUP' ).
    lo_primitive_property->set_edm_name( 'BPOeNBTargetGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPOE_NBIDENT_NUMBER_ASSIGN' ).
    lo_primitive_property->set_edm_name( 'BPOeNBIdentNumberAssigned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPOE_NBINSTITUTE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPOeNBInstituteNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_OE_NBI' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsOeNBInstitute' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_GROUP' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGROUP_ASSIGNMENT_CATEGOR' ).
    lo_primitive_property->set_edm_name( 'BPGroupAssignmentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_GROUP_NAM' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerGroupName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_LEGAL_ENT' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerLegalEntity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGER_AST_RGLN_RESTRICTED' ).
    lo_primitive_property->set_edm_name( 'BPGerAstRglnRestrictedAstQuota' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_DEBTOR_GR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerDebtorGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_BUSINESS' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerBusinessPurpose' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RISK_GROU' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRiskGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRISK_GROUPING_DATE' ).
    lo_primitive_property->set_edm_name( 'BPRiskGroupingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPHAS_GROUP_AFFILIATION' ).
    lo_primitive_property->set_edm_name( 'BPHasGroupAffiliation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIS_MONETARY_FIN_INSTITUT' ).
    lo_primitive_property->set_edm_name( 'BPIsMonetaryFinInstitution' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCRDT_STANDING_REVIEW_IS' ).
    lo_primitive_property->set_edm_name( 'BPCrdtStandingReviewIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLOAN_MONITORING_IS_REQUI' ).
    lo_primitive_property->set_edm_name( 'BPLoanMonitoringIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPHAS_CREDITING_RELIEF' ).
    lo_primitive_property->set_edm_name( 'BPHasCreditingRelief' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPINVEST_IN_RSTRCD_AST_IS' ).
    lo_primitive_property->set_edm_name( 'BPInvestInRstrcdAstIsAuthzd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCENTRAL_BANK_COUNTRY_REG' ).
    lo_primitive_property->set_edm_name( 'BPCentralBankCountryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpfiscal_year_informat_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPFISCAL_YEAR_INFORMAT_2'
                                    is_structure              = VALUE tys_a_bpfiscal_year_informat_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPFiscalYearInformationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPFISCAL_YEAR_INFORMATIO' ).
    lo_entity_set->set_edm_name( 'A_BPFiscalYearInformation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_FISCAL_YE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerFiscalYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPBALANCE_SHEET_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'BPBalanceSheetCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_STOCKHOLDER_MEETI' ).
    lo_primitive_property->set_edm_name( 'BPAnnualStockholderMeetingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFISCAL_YEAR_START_DATE' ).
    lo_primitive_property->set_edm_name( 'BPFiscalYearStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFISCAL_YEAR_END_DATE' ).
    lo_primitive_property->set_edm_name( 'BPFiscalYearEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFISCAL_YEAR_IS_CLOSED' ).
    lo_primitive_property->set_edm_name( 'BPFiscalYearIsClosed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFISCAL_YEAR_CLOSING_DATE' ).
    lo_primitive_property->set_edm_name( 'BPFiscalYearClosingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFSCL_YR_CNSLDTD_FIN_STAT' ).
    lo_primitive_property->set_edm_name( 'BPFsclYrCnsldtdFinStatementDte' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCAPITAL_STOCK_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPCapitalStockAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPISSD_STOCK_CPTL_AMT_IN_B' ).
    lo_primitive_property->set_edm_name( 'BPIssdStockCptlAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPPARTCIPN_CERT_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPPartcipnCertAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPEQUITY_CAPITAL_AMT_IN_BA' ).
    lo_primitive_property->set_edm_name( 'BPEquityCapitalAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGROSS_PREMIUM_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPGrossPremiumAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPNET_PREMIUM_AMT_IN_BAL_S' ).
    lo_primitive_property->set_edm_name( 'BPNetPremiumAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_SALES_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPAnnualSalesAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_NET_INC_AMT_IN_BA' ).
    lo_primitive_property->set_edm_name( 'BPAnnualNetIncAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPDIVIDEND_DISTR_AMT_IN_BA' ).
    lo_primitive_property->set_edm_name( 'BPDividendDistrAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPDEBT_RATIO_IN_YEARS' ).
    lo_primitive_property->set_edm_name( 'BPDebtRatioInYears' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPANNUAL_PN_LAMT_IN_BAL_SH' ).
    lo_primitive_property->set_edm_name( 'BPAnnualPnLAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPBAL_SHEET_TOTAL_AMT_IN_B' ).
    lo_primitive_property->set_edm_name( 'BPBalSheetTotalAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPNUMBER_OF_EMPLOYEES' ).
    lo_primitive_property->set_edm_name( 'BPNumberOfEmployees' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCPTL_RESERVE_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPCptlReserveAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPLGL_REVN_RSRV_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPLglRevnRsrvAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REVN_RSRV_OWN_STK_AMT_IN_B' ).
    lo_primitive_property->set_edm_name( 'RevnRsrvOwnStkAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPSTATRY_RESERVE_AMT_IN_BA' ).
    lo_primitive_property->set_edm_name( 'BPStatryReserveAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPOTH_REVN_RSRV_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPOthRevnRsrvAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPPN_LCARRYFWD_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPPnLCarryfwdAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPSUBORDD_LBLTY_AMT_IN_BAL' ).
    lo_primitive_property->set_edm_name( 'BPSuborddLbltyAmtInBalShtCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRET_ON_TOTAL_CPTL_EMPLD' ).
    lo_primitive_property->set_edm_name( 'BPRetOnTotalCptlEmpldInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPDEBT_CLEARANCE_PERIOD_IN' ).
    lo_primitive_property->set_edm_name( 'BPDebtClearancePeriodInYears' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPFINANCING_COEFF_IN_PERCE' ).
    lo_primitive_property->set_edm_name( 'BPFinancingCoeffInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPEQUITY_RATIO_IN_PERCENT' ).
    lo_primitive_property->set_edm_name( 'BPEquityRatioInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bpintl_address_version_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPINTL_ADDRESS_VERSION_T'
                                    is_structure              = VALUE tys_a_bpintl_address_version_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPIntlAddressVersionType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPINTL_ADDRESS_VERSION' ).
    lo_entity_set->set_edm_name( 'A_BPIntlAddressVersion' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_IDBY_EXTERNAL_SYST' ).
    lo_primitive_property->set_edm_name( 'AddressIDByExternalSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_PERSON_ID' ).
    lo_primitive_property->set_edm_name( 'AddressPersonID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_SEARCH_TERM_1' ).
    lo_primitive_property->set_edm_name( 'AddressSearchTerm1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_SEARCH_TERM_2' ).
    lo_primitive_property->set_edm_name( 'AddressSearchTerm2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_TIME_ZONE' ).
    lo_primitive_property->set_edm_name( 'AddressTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARE_OF_NAME' ).
    lo_primitive_property->set_edm_name( 'CareOfName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NUMBER' ).
    lo_primitive_property->set_edm_name( 'CityNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER_SUPPLEMENT_TE' ).
    lo_primitive_property->set_edm_name( 'HouseNumberSupplementText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_1' ).
    lo_primitive_property->set_edm_name( 'OrganizationName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_2' ).
    lo_primitive_property->set_edm_name( 'OrganizationName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_3' ).
    lo_primitive_property->set_edm_name( 'OrganizationName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_4' ).
    lo_primitive_property->set_edm_name( 'OrganizationName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_FAMILY_NAME' ).
    lo_primitive_property->set_edm_name( 'PersonFamilyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_GIVEN_NAME' ).
    lo_primitive_property->set_edm_name( 'PersonGivenName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_REGION' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_IS_WITHOUT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'POBoxIsWithoutNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_LOBBY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxLobbyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRFRD_COMM_MEDIUM_TYPE' ).
    lo_primitive_property->set_edm_name( 'PrfrdCommMediumType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECONDARY_REGION' ).
    lo_primitive_property->set_edm_name( 'SecondaryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECONDARY_REGION_NAME' ).
    lo_primitive_property->set_edm_name( 'SecondaryRegionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERTIARY_REGION' ).
    lo_primitive_property->set_edm_name( 'TertiaryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERTIARY_REGION_NAME' ).
    lo_primitive_property->set_edm_name( 'TertiaryRegionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VILLAGE_NAME' ).
    lo_primitive_property->set_edm_name( 'VillageName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bprelationship_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BPRELATIONSHIP_TYPE'
                                    is_structure              = VALUE tys_a_bprelationship_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BPRelationshipType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BPRELATIONSHIP' ).
    lo_entity_set->set_edm_name( 'A_BPRelationship' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_1' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_2' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STANDARD_RELATIONSHIP' ).
    lo_primitive_property->set_edm_name( 'IsStandardRelationship' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'RelationshipCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRELATIONSHIP_TYPE' ).
    lo_primitive_property->set_edm_name( 'BPRelationshipType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_business_partner_addre_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_ADDRE_2'
                                    is_structure              = VALUE tys_a_business_partner_addre_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerAddressType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_ADDRESS' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerAddress' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_UUID' ).
    lo_primitive_property->set_edm_name( 'AddressUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_STREET_PREFIX_N' ).
    lo_primitive_property->set_edm_name( 'AdditionalStreetPrefixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_STREET_SUFFIX_N' ).
    lo_primitive_property->set_edm_name( 'AdditionalStreetSuffixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_TIME_ZONE' ).
    lo_primitive_property->set_edm_name( 'AddressTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARE_OF_NAME' ).
    lo_primitive_property->set_edm_name( 'CareOfName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT' ).
    lo_primitive_property->set_edm_name( 'District' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'FullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOME_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'HomeCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER_SUPPLEMENT_TE' ).
    lo_primitive_property->set_edm_name( 'HouseNumberSupplementText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_REGION' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_IS_WITHOUT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'POBoxIsWithoutNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_LOBBY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxLobbyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON' ).
    lo_primitive_property->set_edm_name( 'Person' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRFRD_COMM_MEDIUM_TYPE' ).
    lo_primitive_property->set_edm_name( 'PrfrdCommMediumType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_IDBY_EXTERNAL_SYST' ).
    lo_primitive_property->set_edm_name( 'AddressIDByExternalSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY_CODE' ).
    lo_primitive_property->set_edm_name( 'CountyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOWNSHIP_CODE' ).
    lo_primitive_property->set_edm_name( 'TownshipCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOWNSHIP_NAME' ).
    lo_primitive_property->set_edm_name( 'TownshipName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUILDING' ).
    lo_primitive_property->set_edm_name( 'Building' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FLOOR' ).
    lo_primitive_property->set_edm_name( 'Floor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROOM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RoomNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_USAGE' ).
    lo_navigation_property->set_edm_name( 'to_AddressUsage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BU_PA_ADDRESS_USAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPADDR_DEPDNT_INTL_LOC' ).
    lo_navigation_property->set_edm_name( 'to_BPAddrDepdntIntlLocNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDR_DEPDNT_INTL_LOC_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPINTL_ADDRESS_VERSION' ).
    lo_navigation_property->set_edm_name( 'to_BPIntlAddressVersion' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPINTL_ADDRESS_VERSION_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EMAIL_ADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_EmailAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_EMAIL_ADDRESS_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_FAX_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_FaxNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_FAX_NUMBER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_MOBILE_PHONE_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_MobilePhoneNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_PHONE_NUMBER_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PHONE_NUMBER' ).
    lo_navigation_property->set_edm_name( 'to_PhoneNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_PHONE_NUMBER_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_URLADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_URLAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_ADDRESS_HOME_PAGE_URLTYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_business_partner_alias_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_ALIAS_T'
                                    is_structure              = VALUE tys_a_business_partner_alias_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerAliasType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_ALIAS' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerAlias' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPALIAS_POSITION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPAliasPositionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_ALIAS_NAM' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerAliasName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_bank_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_BANK_TY'
                                    is_structure              = VALUE tys_a_business_partner_bank_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerBankType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_BANK' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerBank' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_IDENTIFICATION' ).
    lo_primitive_property->set_edm_name( 'BankIdentification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_COUNTRY_KEY' ).
    lo_primitive_property->set_edm_name( 'BankCountryKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_NAME' ).
    lo_primitive_property->set_edm_name( 'BankName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BankNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SWIFTCODE' ).
    lo_primitive_property->set_edm_name( 'SWIFTCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_CONTROL_KEY' ).
    lo_primitive_property->set_edm_name( 'BankControlKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_ACCOUNT_HOLDER_NAME' ).
    lo_primitive_property->set_edm_name( 'BankAccountHolderName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_ACCOUNT_NAME' ).
    lo_primitive_property->set_edm_name( 'BankAccountName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IBAN' ).
    lo_primitive_property->set_edm_name( 'IBAN' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 34 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IBANVALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'IBANValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'BankAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_ACCOUNT_REFERENCE_TEX' ).
    lo_primitive_property->set_edm_name( 'BankAccountReferenceText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COLLECTION_AUTH_IND' ).
    lo_primitive_property->set_edm_name( 'CollectionAuthInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_conta_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_CONTA_2'
                                    is_structure              = VALUE tys_a_business_partner_conta_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerContactType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_CONTACT' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerContact' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RelationshipNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PERSON' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STANDARD_RELATIONSHIP' ).
    lo_primitive_property->set_edm_name( 'IsStandardRelationship' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'RelationshipCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CONTACT_ADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_ContactAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_TO_ADDRESS_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CONTACT_RELATIONSHIP' ).
    lo_navigation_property->set_edm_name( 'to_ContactRelationship' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCONTACT_TO_FUNC_AND__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_business_partner_is_ba_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_IS_BA_2'
                                    is_structure              = VALUE tys_a_business_partner_is_ba_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerIsBankType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_IS_BANK' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerIsBank' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_KEY' ).
    lo_primitive_property->set_edm_name( 'BankKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BANK_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'BankCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPMINIMUM_RESERVE' ).
    lo_primitive_property->set_edm_name( 'BPMinimumReserve' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_payme_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_PAYME_2'
                                    is_structure              = VALUE tys_a_business_partner_payme_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerPaymentCardType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_PAYMENT' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerPaymentCard' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_CARD_ID' ).
    lo_primitive_property->set_edm_name( 'PaymentCardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_CARD_TYPE' ).
    lo_primitive_property->set_edm_name( 'PaymentCardType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARD_NUMBER' ).
    lo_primitive_property->set_edm_name( 'CardNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STANDARD_CARD' ).
    lo_primitive_property->set_edm_name( 'IsStandardCard' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARD_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'CardDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARD_HOLDER' ).
    lo_primitive_property->set_edm_name( 'CardHolder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARD_ISSUING_BANK' ).
    lo_primitive_property->set_edm_name( 'CardIssuingBank' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARD_ISSUE_DATE' ).
    lo_primitive_property->set_edm_name( 'CardIssueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_CARD_LOCK' ).
    lo_primitive_property->set_edm_name( 'PaymentCardLock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MASKED_CARD_NUMBER' ).
    lo_primitive_property->set_edm_name( 'MaskedCardNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_ratin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_RATIN_2'
                                    is_structure              = VALUE tys_a_business_partner_ratin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerRatingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_RATING' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerRating' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_PR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRATING_VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'BPRatingValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_GR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingGrade' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_TR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingTrend' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRATING_VALIDITY_START_DA' ).
    lo_primitive_property->set_edm_name( 'BPRatingValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRATING_CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'BPRatingCreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_CO' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingComment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_IS' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRATING_IS_VALID_ON_KEY_D' ).
    lo_primitive_property->set_edm_name( 'BPRatingIsValidOnKeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING_KE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingKeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_RATING__2' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRatingIsExpired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPRATING_LONG_COMMENT' ).
    lo_primitive_property->set_edm_name( 'BPRatingLongComment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_role_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_ROLE_TY'
                                    is_structure              = VALUE tys_a_business_partner_role_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerRoleType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_ROLE' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerRole' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_ROLE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALID_FROM' ).
    lo_primitive_property->set_edm_name( 'ValidFrom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALID_TO' ).
    lo_primitive_property->set_edm_name( 'ValidTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_tax_n_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_TAX_N_2'
                                    is_structure              = VALUE tys_a_business_partner_tax_n_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerTaxNumberType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER_TAX_NUM' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartnerTaxNumber' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_TYPE' ).
    lo_primitive_property->set_edm_name( 'BPTaxType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPTaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_LONG_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPTaxLongNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_business_partner_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUSINESS_PARTNER_TYPE'
                                    is_structure              = VALUE tys_a_business_partner_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusinessPartnerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUSINESS_PARTNER' ).
    lo_entity_set->set_edm_name( 'A_BusinessPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACADEMIC_TITLE' ).
    lo_primitive_property->set_edm_name( 'AcademicTitle' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 81 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_GROUPING' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerGrouping' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_NAME' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 81 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_UUID' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_NAME' ).
    lo_primitive_property->set_edm_name( 'FirstName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'Industry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_NUM' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_2' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_FEMALE' ).
    lo_primitive_property->set_edm_name( 'IsFemale' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MALE' ).
    lo_primitive_property->set_edm_name( 'IsMale' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NATURAL_PERSON' ).
    lo_primitive_property->set_edm_name( 'IsNaturalPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SEX_UNKNOWN' ).
    lo_primitive_property->set_edm_name( 'IsSexUnknown' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GENDER_CODE_NAME' ).
    lo_primitive_property->set_edm_name( 'GenderCodeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_NAME' ).
    lo_primitive_property->set_edm_name( 'LastName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEGAL_FORM' ).
    lo_primitive_property->set_edm_name( 'LegalForm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_BPNAME_1' ).
    lo_primitive_property->set_edm_name( 'OrganizationBPName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_BPNAME_2' ).
    lo_primitive_property->set_edm_name( 'OrganizationBPName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_BPNAME_3' ).
    lo_primitive_property->set_edm_name( 'OrganizationBPName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_BPNAME_4' ).
    lo_primitive_property->set_edm_name( 'OrganizationBPName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_FOUNDATION_DA' ).
    lo_primitive_property->set_edm_name( 'OrganizationFoundationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_LIQUIDATION_D' ).
    lo_primitive_property->set_edm_name( 'OrganizationLiquidationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_TERM_1' ).
    lo_primitive_property->set_edm_name( 'SearchTerm1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEARCH_TERM_2' ).
    lo_primitive_property->set_edm_name( 'SearchTerm2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_LAST_NAME' ).
    lo_primitive_property->set_edm_name( 'AdditionalLastName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BIRTH_DATE' ).
    lo_primitive_property->set_edm_name( 'BirthDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_BIRTH_DAT' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerBirthDateStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_BIRTHPLAC' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerBirthplaceName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_DEATH_DAT' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerDeathDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IS_BLOCKE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_TYPE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROUP_BUSINESS_PARTNER_NAM' ).
    lo_primitive_property->set_edm_name( 'GroupBusinessPartnerName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROUP_BUSINESS_PARTNER_N_2' ).
    lo_primitive_property->set_edm_name( 'GroupBusinessPartnerName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDEPENDENT_ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'IndependentAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_3' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MIDDLE_NAME' ).
    lo_primitive_property->set_edm_name( 'MiddleName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'NameCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME_FORMAT' ).
    lo_primitive_property->set_edm_name( 'NameFormat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'PersonFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PersonNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_ARCHIVING' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForArchiving' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_IDBY_EXT' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerIDByExtSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PRINT_FOR' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPrintFormat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_OCCUPATIO' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerOccupation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_PART_MARITAL_STATUS' ).
    lo_primitive_property->set_edm_name( 'BusPartMaritalStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_PART_NATIONALITY' ).
    lo_primitive_property->set_edm_name( 'BusPartNationality' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_BIRTH_NAM' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerBirthName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_SUPPLEMEN' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerSupplementName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NATURAL_PERSON_EMPLOYER_NA' ).
    lo_primitive_property->set_edm_name( 'NaturalPersonEmployerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_NAME_PREFIX' ).
    lo_primitive_property->set_edm_name( 'LastNamePrefix' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_NAME_SECOND_PREFIX' ).
    lo_primitive_property->set_edm_name( 'LastNameSecondPrefix' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INITIALS' ).
    lo_primitive_property->set_edm_name( 'Initials' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPDATA_CONTROLLER_IS_NOT_R' ).
    lo_primitive_property->set_edm_name( 'BPDataControllerIsNotRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRADING_PARTNER' ).
    lo_primitive_property->set_edm_name( 'TradingPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_RELEVANTEP_FCE_BUS' ).
    lo_primitive_property->set_edm_name( 'YY1_RelevantepFCE_bus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_RELEVANTEP_FCE_BUS_F' ).
    lo_primitive_property->set_edm_name( 'YY1_RelevantepFCE_busF' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_INDEPENDENT_EMA' ).
    lo_navigation_property->set_edm_name( 'to_AddressIndependentEmail' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDRESS_INDEPENDENT__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_INDEPENDENT_FAX' ).
    lo_navigation_property->set_edm_name( 'to_AddressIndependentFax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDRESS_INDEPENDENT__3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_INDEPENDENT_MOB' ).
    lo_navigation_property->set_edm_name( 'to_AddressIndependentMobile' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDRESS_INDEPENDENT__4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_INDEPENDENT_PHO' ).
    lo_navigation_property->set_edm_name( 'to_AddressIndependentPhone' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDRESS_INDEPENDENT__5' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS_INDEPENDENT_WEB' ).
    lo_navigation_property->set_edm_name( 'to_AddressIndependentWebsite' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPADDRESS_INDEPENDENT__6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPCREDIT_WORTHINESS' ).
    lo_navigation_property->set_edm_name( 'to_BPCreditWorthiness' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPCREDIT_WORTHINESS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPDATA_CONTROLLER' ).
    lo_navigation_property->set_edm_name( 'to_BPDataController' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPDATA_CONTROLLER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPEMPLOYMENT' ).
    lo_navigation_property->set_edm_name( 'to_BPEmployment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPEMPLOYMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPFIN_SERVICES_REPORTIN' ).
    lo_navigation_property->set_edm_name( 'to_BPFinServicesReporting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPFINANCIAL_SERVICES_R_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPFISCAL_YEAR_INFORMATI' ).
    lo_navigation_property->set_edm_name( 'to_BPFiscalYearInformation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPFISCAL_YEAR_INFORMAT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BPRELATIONSHIP' ).
    lo_navigation_property->set_edm_name( 'to_BPRelationship' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPRELATIONSHIP_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BPFINANCIAL_SERVICES_E_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_ADDRES' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerAddress' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_ADDRE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_ALIAS' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerAlias' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_ALIAS_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_BANK' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerBank' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_BANK_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_CONTAC' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerContact' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_CONTA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_IS_BAN' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerIsBank' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_IS_BA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_RATING' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerRating' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_RATIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_ROLE' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerRole' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_ROLE_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUSINESS_PARTNER_TAX' ).
    lo_navigation_property->set_edm_name( 'to_BusinessPartnerTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_TAX_N_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUS_PART_ADDR_DEPDNT_TA' ).
    lo_navigation_property->set_edm_name( 'to_BusPartAddrDepdntTaxNmbr' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUS_PART_ADDR_DEPDNT_T_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BU_PA_IDENTIFICATION' ).
    lo_navigation_property->set_edm_name( 'to_BuPaIdentification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BU_PA_IDENTIFICATION_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BU_PA_INDUSTRY' ).
    lo_navigation_property->set_edm_name( 'to_BuPaIndustry' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BU_PA_INDUSTRY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER' ).
    lo_navigation_property->set_edm_name( 'to_Customer' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PAYMENT_CARD' ).
    lo_navigation_property->set_edm_name( 'to_PaymentCard' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUSINESS_PARTNER_PAYME_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER' ).
    lo_navigation_property->set_edm_name( 'to_Supplier' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_bus_part_addr_depdnt_t_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUS_PART_ADDR_DEPDNT_T_2'
                                    is_structure              = VALUE tys_a_bus_part_addr_depdnt_t_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusPartAddrDepdntTaxNmbrType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUS_PART_ADDR_DEPDNT_TAX' ).
    lo_entity_set->set_edm_name( 'A_BusPartAddrDepdntTaxNmbr' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_TYPE' ).
    lo_primitive_property->set_edm_name( 'BPTaxType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPTaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPTAX_LONG_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPTaxLongNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bu_pa_address_usage_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BU_PA_ADDRESS_USAGE_TYPE'
                                    is_structure              = VALUE tys_a_bu_pa_address_usage_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BuPaAddressUsageType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BU_PA_ADDRESS_USAGE' ).
    lo_entity_set->set_edm_name( 'A_BuPaAddressUsage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_USAGE' ).
    lo_primitive_property->set_edm_name( 'AddressUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_USAGE' ).
    lo_primitive_property->set_edm_name( 'StandardUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bu_pa_identification_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BU_PA_IDENTIFICATION_TYP'
                                    is_structure              = VALUE tys_a_bu_pa_identification_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BuPaIdentificationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BU_PA_IDENTIFICATION' ).
    lo_entity_set->set_edm_name( 'A_BuPaIdentification' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIDENTIFICATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'BPIdentificationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIDENTIFICATION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPIdentificationNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIDN_NMBR_ISSUING_INSTITU' ).
    lo_primitive_property->set_edm_name( 'BPIdnNmbrIssuingInstitute' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPIDENTIFICATION_ENTRY_DAT' ).
    lo_primitive_property->set_edm_name( 'BPIdentificationEntryDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bu_pa_industry_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BU_PA_INDUSTRY_TYPE'
                                    is_structure              = VALUE tys_a_bu_pa_industry_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BuPaIndustryType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BU_PA_INDUSTRY' ).
    lo_entity_set->set_edm_name( 'A_BuPaIndustry' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_SECTOR' ).
    lo_primitive_property->set_edm_name( 'IndustrySector' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_SYSTEM_TYPE' ).
    lo_primitive_property->set_edm_name( 'IndustrySystemType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STANDARD_INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'IsStandardIndustry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_KEY_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'IndustryKeyDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 100 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_customer_company_text_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_COMPANY_TEXT_TY'
                                    is_structure              = VALUE tys_a_customer_company_text_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerCompanyTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_COMPANY_TEXT' ).
    lo_entity_set->set_edm_name( 'A_CustomerCompanyText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_customer_company_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_COMPANY_TYPE'
                                    is_structure              = VALUE tys_a_customer_company_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerCompanyType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_COMPANY' ).
    lo_entity_set->set_edm_name( 'A_CustomerCompany' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APARTOLERANCE_GROUP' ).
    lo_primitive_property->set_edm_name( 'APARToleranceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'AccountByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK' ).
    lo_primitive_property->set_edm_name( 'AccountingClerk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK_FAX_NUMBE' ).
    lo_primitive_property->set_edm_name( 'AccountingClerkFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK_INTERNET' ).
    lo_primitive_property->set_edm_name( 'AccountingClerkInternetAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 130 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK_PHONE_NUM' ).
    lo_primitive_property->set_edm_name( 'AccountingClerkPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_PAYER_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'AlternativePayerAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COLLECTIVE_INVOICE_VARIANT' ).
    lo_primitive_property->set_edm_name( 'CollectiveInvoiceVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_NOTE' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountNote' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HEAD_OFFICE' ).
    lo_primitive_property->set_edm_name( 'CustomerHeadOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_SUPPLIER_CLEARING' ).
    lo_primitive_property->set_edm_name( 'CustomerSupplierClearingIsUsed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_BANK' ).
    lo_primitive_property->set_edm_name( 'HouseBank' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTEREST_CALCULATION_CODE' ).
    lo_primitive_property->set_edm_name( 'InterestCalculationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTEREST_CALCULATION_DATE' ).
    lo_primitive_property->set_edm_name( 'InterestCalculationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTRST_CALC_FREQUENCY_IN_M' ).
    lo_primitive_property->set_edm_name( 'IntrstCalcFrequencyInMonths' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_TO_BE_LOCALLY_PROCESSED' ).
    lo_primitive_property->set_edm_name( 'IsToBeLocallyProcessed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_IS_TO_BE_PAID_SEPARAT' ).
    lo_primitive_property->set_edm_name( 'ItemIsToBePaidSeparately' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAYOUT_SORTING_RULE' ).
    lo_primitive_property->set_edm_name( 'LayoutSortingRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_BLOCKING_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentBlockingReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_METHODS_LIST' ).
    lo_primitive_property->set_edm_name( 'PaymentMethodsList' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYT_ADVICE_IS_SENTBY_EDI' ).
    lo_primitive_property->set_edm_name( 'PaytAdviceIsSentbyEDI' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHYSICAL_INVENTORY_BLOCK_I' ).
    lo_primitive_property->set_edm_name( 'PhysicalInventoryBlockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECONCILIATION_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'ReconciliationAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECORD_PAYMENT_HISTORY_IND' ).
    lo_primitive_property->set_edm_name( 'RecordPaymentHistoryIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_AT_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'UserAtCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_PLANNING_GROUP' ).
    lo_primitive_property->set_edm_name( 'CashPlanningGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KNOWN_OR_NEGOTIATED_LEAVE' ).
    lo_primitive_property->set_edm_name( 'KnownOrNegotiatedLeave' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUE_ADJUSTMENT_KEY' ).
    lo_primitive_property->set_edm_name( 'ValueAdjustmentKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_COMPANY_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_CompanyText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_COMPANY_TEXT_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_DUNNING' ).
    lo_navigation_property->set_edm_name( 'to_CustomerDunning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_DUNNING_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_WITH_HOLDING_TAX' ).
    lo_navigation_property->set_edm_name( 'to_WithHoldingTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_WITH_HOLDING__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_customer_dunning_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_DUNNING_TYPE'
                                    is_structure              = VALUE tys_a_customer_dunning_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerDunningType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_DUNNING' ).
    lo_entity_set->set_edm_name( 'A_CustomerDunning' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_AREA' ).
    lo_primitive_property->set_edm_name( 'DunningArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_BLOCK' ).
    lo_primitive_property->set_edm_name( 'DunningBlock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_LEVEL' ).
    lo_primitive_property->set_edm_name( 'DunningLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'DunningProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'DunningRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_DUNNED_ON' ).
    lo_primitive_property->set_edm_name( 'LastDunnedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEG_DUNNING_PROCEDURE_ON' ).
    lo_primitive_property->set_edm_name( 'LegDunningProcedureOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_CLERK' ).
    lo_primitive_property->set_edm_name( 'DunningClerk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_customer_sales_area_ta_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_SALES_AREA_TA_2'
                                    is_structure              = VALUE tys_a_customer_sales_area_ta_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerSalesAreaTaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_SALES_AREA_TAX' ).
    lo_entity_set->set_edm_name( 'A_CustomerSalesAreaTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICATIO' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_AREA_ADDR_DEPDNT_TA' ).
    lo_navigation_property->set_edm_name( 'to_SlsAreaAddrDepdntTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_SLS_AREA_ADDR_DEP_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_customer_sales_area_te_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_SALES_AREA_TE_2'
                                    is_structure              = VALUE tys_a_customer_sales_area_te_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerSalesAreaTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_SALES_AREA_TEXT' ).
    lo_entity_set->set_edm_name( 'A_CustomerSalesAreaText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_customer_sales_area_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_SALES_AREA_TYPE'
                                    is_structure              = VALUE tys_a_customer_sales_area_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerSalesAreaType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_SALES_AREA' ).
    lo_entity_set->set_edm_name( 'A_CustomerSalesArea' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'AccountByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_IS_BLOCKED_FOR_CUS' ).
    lo_primitive_property->set_edm_name( 'BillingIsBlockedForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPLETE_DELIVERY_IS_DEFIN' ).
    lo_primitive_property->set_edm_name( 'CompleteDeliveryIsDefined' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_CONTROL_AREA' ).
    lo_primitive_property->set_edm_name( 'CreditControlArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_IS_RLVT_FOR_SETTLMT_M' ).
    lo_primitive_property->set_edm_name( 'CustIsRlvtForSettlmtMgmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ABCCLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'CustomerABCClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_ASSIGNMEN' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_IS_REBATE_RELEVAN' ).
    lo_primitive_property->set_edm_name( 'CustomerIsRebateRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PRICE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerPriceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PRICING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'CustomerPricingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_STATISTICS_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerStatisticsGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_PROD_PROPOSAL_PROCEDU' ).
    lo_primitive_property->set_edm_name( 'CustProdProposalProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_IS_BLOCKED_FOR_CU' ).
    lo_primitive_property->set_edm_name( 'DeliveryIsBlockedForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_PRIORITY' ).
    lo_primitive_property->set_edm_name( 'DeliveryPriority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_VERSION' ).
    lo_primitive_property->set_edm_name( 'IncotermsVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_1_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc1AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_2_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc2AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_DVTG_LOC' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnDvtgLocAddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_TRANSFER_LOCATIO' ).
    lo_primitive_property->set_edm_name( 'IncotermsTransferLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 28 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_SBST_HAS_NO_TIME_OR_Q' ).
    lo_primitive_property->set_edm_name( 'InspSbstHasNoTimeOrQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_DATE' ).
    lo_primitive_property->set_edm_name( 'InvoiceDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_ORDER_PROBABILITY_IN' ).
    lo_primitive_property->set_edm_name( 'ItemOrderProbabilityInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUAL_INVOICE_MAINT_IS_RE' ).
    lo_primitive_property->set_edm_name( 'ManualInvoiceMaintIsRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAX_NMBR_OF_PARTIAL_DELIVE' ).
    lo_primitive_property->set_edm_name( 'MaxNmbrOfPartialDelivery' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_COMBINATION_IS_ALLOW' ).
    lo_primitive_property->set_edm_name( 'OrderCombinationIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_IS_BLOCKED_FOR_CUSTO' ).
    lo_primitive_property->set_edm_name( 'OrderIsBlockedForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERDELIV_TOLRTD_LMT_RATIO' ).
    lo_primitive_property->set_edm_name( 'OverdelivTolrtdLmtRatioInPct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTIAL_DELIVERY_IS_ALLOWE' ).
    lo_primitive_property->set_edm_name( 'PartialDeliveryIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'PriceListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_UNIT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductUnitGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROOF_OF_DELIVERY_TIME_VAL' ).
    lo_primitive_property->set_edm_name( 'ProofOfDeliveryTimeValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ITEM_PROPOSAL' ).
    lo_primitive_property->set_edm_name( 'SalesItemProposal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SLS_DOC_IS_RLVT_FOR_PROOF' ).
    lo_primitive_property->set_edm_name( 'SlsDocIsRlvtForProofOfDeliv' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SLS_UNLMTD_OVRDELIV_IS_ALL' ).
    lo_primitive_property->set_edm_name( 'SlsUnlmtdOvrdelivIsAllwd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'SupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DISTRICT' ).
    lo_primitive_property->set_edm_name( 'SalesDistrict' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDERDELIV_TOLRTD_LMT_RATI' ).
    lo_primitive_property->set_edm_name( 'UnderdelivTolrtdLmtRatioInPct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_LIST_SCHEDULE' ).
    lo_primitive_property->set_edm_name( 'InvoiceListSchedule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_GUARANTEE_PROCEDUR' ).
    lo_primitive_property->set_edm_name( 'PaymentGuaranteeProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER_FUNCTION' ).
    lo_navigation_property->set_edm_name( 'to_PartnerFunction' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_SALES_PARTNER_FUN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_AREA_TAX' ).
    lo_navigation_property->set_edm_name( 'to_SalesAreaTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_SALES_AREA_TA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_AREA_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_SalesAreaText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_SALES_AREA_TE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SLS_AREA_ADDR_DEPDNT_IN' ).
    lo_navigation_property->set_edm_name( 'to_SlsAreaAddrDepdntInfo' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_SLS_AREA_ADDR_DEP_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_customer_tax_grouping_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_TAX_GROUPING_TY'
                                    is_structure              = VALUE tys_a_customer_tax_grouping_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerTaxGroupingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_TAX_GROUPING' ).
    lo_entity_set->set_edm_name( 'A_CustomerTaxGrouping' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_GROUPING_CODE' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxGroupingCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GRP_EXEMPTION_CER' ).
    lo_primitive_property->set_edm_name( 'CustTaxGrpExemptionCertificate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GROUP_EXEMPTION_R' ).
    lo_primitive_property->set_edm_name( 'CustTaxGroupExemptionRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GROUP_EXEMPTION_S' ).
    lo_primitive_property->set_edm_name( 'CustTaxGroupExemptionStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GROUP_EXEMPTION_E' ).
    lo_primitive_property->set_edm_name( 'CustTaxGroupExemptionEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GROUP_SUBJECTED_S' ).
    lo_primitive_property->set_edm_name( 'CustTaxGroupSubjectedStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_TAX_GROUP_SUBJECTED_E' ).
    lo_primitive_property->set_edm_name( 'CustTaxGroupSubjectedEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

  ENDMETHOD.


  METHOD def_a_customer_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_customer_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_TEXT' ).
    lo_entity_set->set_edm_name( 'A_CustomerText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_customer_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_TYPE'
                                    is_structure              = VALUE tys_a_customer_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER' ).
    lo_entity_set->set_edm_name( 'A_Customer' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_IS_BLOCKED_FOR_CUS' ).
    lo_primitive_property->set_edm_name( 'BillingIsBlockedForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'CustomerClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'CustomerFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 220 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCUSTOMER_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'BPCustomerFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 220 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_NAME' ).
    lo_primitive_property->set_edm_name( 'CustomerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCUSTOMER_NAME' ).
    lo_primitive_property->set_edm_name( 'BPCustomerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 81 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_IS_BLOCKED' ).
    lo_primitive_property->set_edm_name( 'DeliveryIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_01' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute01' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_02' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute02' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_03' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute03' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_04' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute04' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_05' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute05' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_06' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute06' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_07' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute07' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_08' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute08' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_09' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute09' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREE_DEFINED_ATTRIBUTE_10' ).
    lo_primitive_property->set_edm_name( 'FreeDefinedAttribute10' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NFPARTNER_IS_NATURAL_PERSO' ).
    lo_primitive_property->set_edm_name( 'NFPartnerIsNaturalPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_IS_BLOCKED_FOR_CUSTO' ).
    lo_primitive_property->set_edm_name( 'OrderIsBlockedForCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTING_IS_BLOCKED' ).
    lo_primitive_property->set_edm_name( 'PostingIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CORPORATE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerCorporateGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FiscalAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'Industry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_CODE_1' ).
    lo_primitive_property->set_edm_name( 'IndustryCode1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_CODE_2' ).
    lo_primitive_property->set_edm_name( 'IndustryCode2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_CODE_3' ).
    lo_primitive_property->set_edm_name( 'IndustryCode3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_CODE_4' ).
    lo_primitive_property->set_edm_name( 'IndustryCode4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_CODE_5' ).
    lo_primitive_property->set_edm_name( 'IndustryCode5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_NUM' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_2' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_3' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NIELSEN_REGION' ).
    lo_primitive_property->set_edm_name( 'NielsenRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RESPONSIBLE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ResponsibleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_1' ).
    lo_primitive_property->set_edm_name( 'TaxNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_2' ).
    lo_primitive_property->set_edm_name( 'TaxNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_3' ).
    lo_primitive_property->set_edm_name( 'TaxNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_4' ).
    lo_primitive_property->set_edm_name( 'TaxNumber4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_5' ).
    lo_primitive_property->set_edm_name( 'TaxNumber5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'TaxNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPRESS_TRAIN_STATION_NAME' ).
    lo_primitive_property->set_edm_name( 'ExpressTrainStationName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRAIN_STATION_NAME' ).
    lo_primitive_property->set_edm_name( 'TrainStationName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_ICMSTAX_PAYER_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_ICMSTaxPayerType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_ECONOMIC_ACTIVITY_NATL' ).
    lo_primitive_property->set_edm_name( 'BR_EconomicActivityNatlClfn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_BPLEGAL_NATURE_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_BPLegalNatureType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_REGIMEN_CODE' ).
    lo_primitive_property->set_edm_name( 'BR_TaxRegimenCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_INDUSTRY_MAIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_IndustryMainType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_DECLARATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_TaxDeclarationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_BPCOMPANY_SIZE_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_BPCompanySizeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_PISAND_COFINSDECLN_REGI' ).
    lo_primitive_property->set_edm_name( 'BR_PISAndCOFINSDeclnRegimen' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_COMPANY' ).
    lo_navigation_property->set_edm_name( 'to_CustomerCompany' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_COMPANY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_SALES_AREA' ).
    lo_navigation_property->set_edm_name( 'to_CustomerSalesArea' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_SALES_AREA_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_TAX_GROUPING' ).
    lo_navigation_property->set_edm_name( 'to_CustomerTaxGrouping' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_TAX_GROUPING_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_CustomerText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUSTOMER_UNLOADING_POIN' ).
    lo_navigation_property->set_edm_name( 'to_CustomerUnloadingPoint' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUSTOMER_UNLOADING_POI_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUST_ADDR_DEPDNT_EXT_ID' ).
    lo_navigation_property->set_edm_name( 'to_CustAddrDepdntExtIdentifier' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_ADDR_DEPDNT_EXT_I_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUST_ADDR_DEPDNT_INFORM' ).
    lo_navigation_property->set_edm_name( 'to_CustAddrDepdntInformation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_ADDR_DEPDNT_INFOR_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CUST_UNLDG_PT_ADDR_DEPD' ).
    lo_navigation_property->set_edm_name( 'to_CustUnldgPtAddrDepdntInfo' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CUST_UNLDG_PT_ADDR_DEP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_customer_unloading_poi_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_UNLOADING_POI_2'
                                    is_structure              = VALUE tys_a_customer_unloading_poi_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerUnloadingPointType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_UNLOADING_POINT' ).
    lo_entity_set->set_edm_name( 'A_CustomerUnloadingPoint' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLOADING_POINT_NAME' ).
    lo_primitive_property->set_edm_name( 'UnloadingPointName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_FACTORY_CALENDER' ).
    lo_primitive_property->set_edm_name( 'CustomerFactoryCalenderCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGOODS_RECEIVING_HOURS_CO' ).
    lo_primitive_property->set_edm_name( 'BPGoodsReceivingHoursCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DFLT_BPUNLOADING_POINT' ).
    lo_primitive_property->set_edm_name( 'IsDfltBPUnloadingPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'MondayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'MondayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'MondayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'MondayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_MORNING_OPENING_TI' ).
    lo_primitive_property->set_edm_name( 'TuesdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_MORNING_CLOSING_TI' ).
    lo_primitive_property->set_edm_name( 'TuesdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'TuesdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'TuesdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_MORNING_OPENING' ).
    lo_primitive_property->set_edm_name( 'WednesdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_MORNING_CLOSING' ).
    lo_primitive_property->set_edm_name( 'WednesdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_AFTERNOON_OPENIN' ).
    lo_primitive_property->set_edm_name( 'WednesdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_AFTERNOON_CLOSIN' ).
    lo_primitive_property->set_edm_name( 'WednesdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_MORNING_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'ThursdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_MORNING_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'ThursdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'ThursdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'ThursdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'FridayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'FridayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'FridayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'FridayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_MORNING_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'SaturdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_MORNING_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'SaturdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'SaturdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'SaturdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'SundayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'SundayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'SundayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'SundayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_customer_with_holding__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUSTOMER_WITH_HOLDING__2'
                                    is_structure              = VALUE tys_a_customer_with_holding__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustomerWithHoldingTaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUSTOMER_WITH_HOLDING_TA' ).
    lo_entity_set->set_edm_name( 'A_CustomerWithHoldingTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_TYPE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_AGENT' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxAgent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBLIGATION_DATE_BEGIN' ).
    lo_primitive_property->set_edm_name( 'ObligationDateBegin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBLIGATION_DATE_END' ).
    lo_primitive_property->set_edm_name( 'ObligationDateEnd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CERTIFICAT' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCertificate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_EXMPT_PERC' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxExmptPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_DATE_BEGIN' ).
    lo_primitive_property->set_edm_name( 'ExemptionDateBegin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_DATE_END' ).
    lo_primitive_property->set_edm_name( 'ExemptionDateEnd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_REASON' ).
    lo_primitive_property->set_edm_name( 'ExemptionReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECIPIENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'RecipientType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_addr_depdnt_ext_i_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_ADDR_DEPDNT_EXT_I_2'
                                    is_structure              = VALUE tys_a_cust_addr_depdnt_ext_i_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustAddrDepdntExtIdentifierType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_ADDR_DEPDNT_EXT_IDE' ).
    lo_entity_set->set_edm_name( 'A_CustAddrDepdntExtIdentifier' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_EXTERNAL_REF_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerExternalRefID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_addr_depdnt_infor_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_ADDR_DEPDNT_INFOR_2'
                                    is_structure              = VALUE tys_a_cust_addr_depdnt_infor_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustAddrDepdntInformationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_ADDR_DEPDNT_INFORMA' ).
    lo_entity_set->set_edm_name( 'A_CustAddrDepdntInformation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPRESS_TRAIN_STATION_NAME' ).
    lo_primitive_property->set_edm_name( 'ExpressTrainStationName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRAIN_STATION_NAME' ).
    lo_primitive_property->set_edm_name( 'TrainStationName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_sales_partner_fun_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_SALES_PARTNER_FUN_2'
                                    is_structure              = VALUE tys_a_cust_sales_partner_fun_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustSalesPartnerFuncType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_SALES_PARTNER_FUNC' ).
    lo_entity_set->set_edm_name( 'A_CustSalesPartnerFunc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_COUNTER' ).
    lo_primitive_property->set_edm_name( 'PartnerCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPCUSTOMER_NUMBER' ).
    lo_primitive_property->set_edm_name( 'BPCustomerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PARTNER_DESCRIPTI' ).
    lo_primitive_property->set_edm_name( 'CustomerPartnerDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEFAULT_PARTNER' ).
    lo_primitive_property->set_edm_name( 'DefaultPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PersonnelNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON' ).
    lo_primitive_property->set_edm_name( 'ContactPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_sls_area_addr_dep_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_SLS_AREA_ADDR_DEP_3'
                                    is_structure              = VALUE tys_a_cust_sls_area_addr_dep_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustSlsAreaAddrDepdntInfoType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_SLS_AREA_ADDR_DEPDN' ).
    lo_entity_set->set_edm_name( 'A_CustSlsAreaAddrDepdntInfo' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_1_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc1AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_2_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc2AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_DVTG_LOC' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnDvtgLocAddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_IS_BLOCKED' ).
    lo_primitive_property->set_edm_name( 'DeliveryIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'SupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_VERSION' ).
    lo_primitive_property->set_edm_name( 'IncotermsVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_sls_area_addr_dep_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_SLS_AREA_ADDR_DEP_4'
                                    is_structure              = VALUE tys_a_cust_sls_area_addr_dep_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustSlsAreaAddrDepdntTaxInfoType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_SLS_AREA_ADDR_DEP_2' ).
    lo_entity_set->set_edm_name( 'A_CustSlsAreaAddrDepdntTaxInfo' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICATIO' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cust_unldg_pt_addr_dep_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CUST_UNLDG_PT_ADDR_DEP_2'
                                    is_structure              = VALUE tys_a_cust_unldg_pt_addr_dep_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CustUnldgPtAddrDepdntInfoType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CUST_UNLDG_PT_ADDR_DEPDN' ).
    lo_entity_set->set_edm_name( 'A_CustUnldgPtAddrDepdntInfo' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLOADING_POINT_NAME' ).
    lo_primitive_property->set_edm_name( 'UnloadingPointName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_FACTORY_CALENDER' ).
    lo_primitive_property->set_edm_name( 'CustomerFactoryCalenderCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BPGOODS_RECEIVING_HOURS_CO' ).
    lo_primitive_property->set_edm_name( 'BPGoodsReceivingHoursCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DFLT_BPUNLOADING_POINT' ).
    lo_primitive_property->set_edm_name( 'IsDfltBPUnloadingPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'MondayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'MondayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'MondayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MONDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'MondayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_MORNING_OPENING_TI' ).
    lo_primitive_property->set_edm_name( 'TuesdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_MORNING_CLOSING_TI' ).
    lo_primitive_property->set_edm_name( 'TuesdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'TuesdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TUESDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'TuesdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_MORNING_OPENING' ).
    lo_primitive_property->set_edm_name( 'WednesdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_MORNING_CLOSING' ).
    lo_primitive_property->set_edm_name( 'WednesdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_AFTERNOON_OPENIN' ).
    lo_primitive_property->set_edm_name( 'WednesdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEDNESDAY_AFTERNOON_CLOSIN' ).
    lo_primitive_property->set_edm_name( 'WednesdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_MORNING_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'ThursdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_MORNING_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'ThursdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'ThursdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THURSDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'ThursdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'FridayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'FridayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'FridayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FRIDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'FridayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_MORNING_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'SaturdayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_MORNING_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'SaturdayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_AFTERNOON_OPENING' ).
    lo_primitive_property->set_edm_name( 'SaturdayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SATURDAY_AFTERNOON_CLOSING' ).
    lo_primitive_property->set_edm_name( 'SaturdayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_MORNING_OPENING_TIM' ).
    lo_primitive_property->set_edm_name( 'SundayMorningOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_MORNING_CLOSING_TIM' ).
    lo_primitive_property->set_edm_name( 'SundayMorningClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_AFTERNOON_OPENING_T' ).
    lo_primitive_property->set_edm_name( 'SundayAfternoonOpeningTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUNDAY_AFTERNOON_CLOSING_T' ).
    lo_primitive_property->set_edm_name( 'SundayAfternoonClosingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_supplier_company_text_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_COMPANY_TEXT_TY'
                                    is_structure              = VALUE tys_a_supplier_company_text_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierCompanyTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_COMPANY_TEXT' ).
    lo_entity_set->set_edm_name( 'A_SupplierCompanyText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_supplier_company_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_COMPANY_TYPE'
                                    is_structure              = VALUE tys_a_supplier_company_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierCompanyType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_COMPANY' ).
    lo_entity_set->set_edm_name( 'A_SupplierCompany' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyCodeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_BLOCKING_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentBlockingReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_IS_BLOCKED_FOR_PO' ).
    lo_primitive_property->set_edm_name( 'SupplierIsBlockedForPosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK' ).
    lo_primitive_property->set_edm_name( 'AccountingClerk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK_FAX_NUMBE' ).
    lo_primitive_property->set_edm_name( 'AccountingClerkFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_CLERK_PHONE_NUM' ).
    lo_primitive_property->set_edm_name( 'AccountingClerkPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CLERK' ).
    lo_primitive_property->set_edm_name( 'SupplierClerk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CLERK_URL' ).
    lo_primitive_property->set_edm_name( 'SupplierClerkURL' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 130 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_METHODS_LIST' ).
    lo_primitive_property->set_edm_name( 'PaymentMethodsList' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLEAR_CUSTOMER_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'ClearCustomerSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_TO_BE_LOCALLY_PROCESSED' ).
    lo_primitive_property->set_edm_name( 'IsToBeLocallyProcessed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_IS_TO_BE_PAID_SEPARAT' ).
    lo_primitive_property->set_edm_name( 'ItemIsToBePaidSeparately' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_IS_TO_BE_SENT_BY_E' ).
    lo_primitive_property->set_edm_name( 'PaymentIsToBeSentByEDI' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_BANK' ).
    lo_primitive_property->set_edm_name( 'HouseBank' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHECK_PAID_DURATION_IN_DAY' ).
    lo_primitive_property->set_edm_name( 'CheckPaidDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_EXCH_LMT_AMT_IN_CO' ).
    lo_primitive_property->set_edm_name( 'BillOfExchLmtAmtInCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CLERK_IDBY_SUPPLI' ).
    lo_primitive_property->set_edm_name( 'SupplierClerkIDBySupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECONCILIATION_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'ReconciliationAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTEREST_CALCULATION_CODE' ).
    lo_primitive_property->set_edm_name( 'InterestCalculationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTEREST_CALCULATION_DATE' ).
    lo_primitive_property->set_edm_name( 'InterestCalculationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTRST_CALC_FREQUENCY_IN_M' ).
    lo_primitive_property->set_edm_name( 'IntrstCalcFrequencyInMonths' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_HEAD_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SupplierHeadOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_PAYEE' ).
    lo_primitive_property->set_edm_name( 'AlternativePayee' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAYOUT_SORTING_RULE' ).
    lo_primitive_property->set_edm_name( 'LayoutSortingRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APARTOLERANCE_GROUP' ).
    lo_primitive_property->set_edm_name( 'APARToleranceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CERTIFICATION_DAT' ).
    lo_primitive_property->set_edm_name( 'SupplierCertificationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_NOTE' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountNote' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_PLANNING_GROUP' ).
    lo_primitive_property->set_edm_name( 'CashPlanningGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_TO_BE_CHECKED_FOR_DUPLI' ).
    lo_primitive_property->set_edm_name( 'IsToBeCheckedForDuplicates' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINORITY_GROUP' ).
    lo_primitive_property->set_edm_name( 'MinorityGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_MEMO_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CreditMemoPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_COMPANY_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_CompanyText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_COMPANY_TEXT_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER' ).
    lo_navigation_property->set_edm_name( 'to_Supplier' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER_DUNNING' ).
    lo_navigation_property->set_edm_name( 'to_SupplierDunning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_DUNNING_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER_WITH_HOLDING_T' ).
    lo_navigation_property->set_edm_name( 'to_SupplierWithHoldingTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_WITH_HOLDING__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_supplier_dunning_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_DUNNING_TYPE'
                                    is_structure              = VALUE tys_a_supplier_dunning_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierDunningType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_DUNNING' ).
    lo_entity_set->set_edm_name( 'A_SupplierDunning' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_AREA' ).
    lo_primitive_property->set_edm_name( 'DunningArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_BLOCK' ).
    lo_primitive_property->set_edm_name( 'DunningBlock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_LEVEL' ).
    lo_primitive_property->set_edm_name( 'DunningLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'DunningProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'DunningRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_DUNNED_ON' ).
    lo_primitive_property->set_edm_name( 'LastDunnedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEG_DUNNING_PROCEDURE_ON' ).
    lo_primitive_property->set_edm_name( 'LegDunningProcedureOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_CLERK' ).
    lo_primitive_property->set_edm_name( 'DunningClerk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_supplier_partner_func_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_PARTNER_FUNC_TY'
                                    is_structure              = VALUE tys_a_supplier_partner_func_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierPartnerFuncType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_PARTNER_FUNC' ).
    lo_entity_set->set_edm_name( 'A_SupplierPartnerFunc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_SUBRANGE' ).
    lo_primitive_property->set_edm_name( 'SupplierSubrange' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_COUNTER' ).
    lo_primitive_property->set_edm_name( 'PartnerCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEFAULT_PARTNER' ).
    lo_primitive_property->set_edm_name( 'DefaultPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'ReferenceSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_supplier_purchasing_or_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_PURCHASING_OR_3'
                                    is_structure              = VALUE tys_a_supplier_purchasing_or_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierPurchasingOrgType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_PURCHASING_ORG' ).
    lo_entity_set->set_edm_name( 'A_SupplierPurchasingOrg' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTOMATIC_EVALUATED_RCPT_S' ).
    lo_primitive_property->set_edm_name( 'AutomaticEvaluatedRcptSettlmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CALCULATION_SCHEMA_GROUP_C' ).
    lo_primitive_property->set_edm_name( 'CalculationSchemaGroupCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EVALD_RECEIPT_SETTLEMENT_I' ).
    lo_primitive_property->set_edm_name( 'EvaldReceiptSettlementIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_VERSION' ).
    lo_primitive_property->set_edm_name( 'IncotermsVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_1_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc1AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_LOC_2_AD' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnLoc2AddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_SUP_CHN_DVTG_LOC' ).
    lo_primitive_property->set_edm_name( 'IncotermsSupChnDvtgLocAddlUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTRASTAT_CRS_BORDER_TR_MO' ).
    lo_primitive_property->set_edm_name( 'IntrastatCrsBorderTrMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_IS_GOODS_RECEIPT_B' ).
    lo_primitive_property->set_edm_name( 'InvoiceIsGoodsReceiptBased' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_IS_MMSERVICE_ENTRY' ).
    lo_primitive_property->set_edm_name( 'InvoiceIsMMServiceEntryBased' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_PLANNED_DELIVERY' ).
    lo_primitive_property->set_edm_name( 'MaterialPlannedDeliveryDurn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_CYCLE' ).
    lo_primitive_property->set_edm_name( 'PlanningCycle' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'PricingDateControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_STOCK_AND_SLS_DATA_TR' ).
    lo_primitive_property->set_edm_name( 'ProdStockAndSlsDataTransfPrfl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_UNIT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductUnitGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PUR_ORD_AUTO_GENERATION_IS' ).
    lo_primitive_property->set_edm_name( 'PurOrdAutoGenerationIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_IS_BLOCKED_FOR' ).
    lo_primitive_property->set_edm_name( 'PurchasingIsBlockedForSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_DISCOUNT_IN_KIND_IS' ).
    lo_primitive_property->set_edm_name( 'SuplrDiscountInKindIsGranted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_INVC_REVAL_IS_ALLOWE' ).
    lo_primitive_property->set_edm_name( 'SuplrInvcRevalIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_IS_RLVT_FOR_SETTLMT' ).
    lo_primitive_property->set_edm_name( 'SuplrIsRlvtForSettlmtMgmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_PURG_ORG_IS_RLVT_FOR' ).
    lo_primitive_property->set_edm_name( 'SuplrPurgOrgIsRlvtForPriceDetn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ABCCLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'SupplierABCClassificationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_IS_RETURNS_SUPPLI' ).
    lo_primitive_property->set_edm_name( 'SupplierIsReturnsSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SupplierPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_RESP_SALES_PERSON' ).
    lo_primitive_property->set_edm_name( 'SupplierRespSalesPersonName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CONFIRMATION_CONT' ).
    lo_primitive_property->set_edm_name( 'SupplierConfirmationControlKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_ORDER_ACKN_RQD' ).
    lo_primitive_property->set_edm_name( 'IsOrderAcknRqd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER_FUNCTION' ).
    lo_navigation_property->set_edm_name( 'to_PartnerFunction' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_PARTNER_FUNC_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PURCHASING_ORG_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_PurchasingOrgText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_PURCHASING_OR_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_supplier_purchasing_or_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_PURCHASING_OR_4'
                                    is_structure              = VALUE tys_a_supplier_purchasing_or_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierPurchasingOrgTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_PURCHASING_OR_2' ).
    lo_entity_set->set_edm_name( 'A_SupplierPurchasingOrgText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_supplier_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_supplier_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_TEXT' ).
    lo_entity_set->set_edm_name( 'A_SupplierText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_supplier_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_TYPE'
                                    is_structure              = VALUE tys_a_supplier_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER' ).
    lo_entity_set->set_edm_name( 'A_Supplier' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_PAYEE_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'AlternativePayeeAccountNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_PAN_NUMBE' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerPanNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

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

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_IS_BLOCKED_FOR_SUP' ).
    lo_primitive_property->set_edm_name( 'PaymentIsBlockedForSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTING_IS_BLOCKED' ).
    lo_primitive_property->set_edm_name( 'PostingIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_IS_BLOCKED' ).
    lo_primitive_property->set_edm_name( 'PurchasingIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SupplierAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'SupplierFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 220 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_NAME' ).
    lo_primitive_property->set_edm_name( 'SupplierName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BIRTH_DATE' ).
    lo_primitive_property->set_edm_name( 'BirthDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONCATENATED_INTERNATIONAL' ).
    lo_primitive_property->set_edm_name( 'ConcatenatedInternationalLocNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'DeletionIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FiscalAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY' ).
    lo_primitive_property->set_edm_name( 'Industry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_NUM' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_2' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_LOCATION_N_3' ).
    lo_primitive_property->set_edm_name( 'InternationalLocationNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NATURAL_PERSON' ).
    lo_primitive_property->set_edm_name( 'IsNaturalPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PaymentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RESPONSIBLE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ResponsibleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_QLTY_IN_PROCMT_CERTF' ).
    lo_primitive_property->set_edm_name( 'SuplrQltyInProcmtCertfnValidTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_QUALITY_MANAGEMENT_S' ).
    lo_primitive_property->set_edm_name( 'SuplrQualityManagementSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_CORPORATE_GROUP' ).
    lo_primitive_property->set_edm_name( 'SupplierCorporateGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_PROCUREMENT_BLOCK' ).
    lo_primitive_property->set_edm_name( 'SupplierProcurementBlock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_1' ).
    lo_primitive_property->set_edm_name( 'TaxNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_2' ).
    lo_primitive_property->set_edm_name( 'TaxNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_3' ).
    lo_primitive_property->set_edm_name( 'TaxNumber3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_4' ).
    lo_primitive_property->set_edm_name( 'TaxNumber4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_5' ).
    lo_primitive_property->set_edm_name( 'TaxNumber5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_RESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'TaxNumberResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_NUMBER_TYPE' ).
    lo_primitive_property->set_edm_name( 'TaxNumberType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_PROOF_OF_DELIV_RLVT' ).
    lo_primitive_property->set_edm_name( 'SuplrProofOfDelivRlvtCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_IS_SPLIT' ).
    lo_primitive_property->set_edm_name( 'BR_TaxIsSplit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATA_EXCHANGE_INSTRUCTION' ).
    lo_primitive_property->set_edm_name( 'DataExchangeInstructionKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TERMS_OF_LIABILITY_ARE' ).
    lo_primitive_property->set_edm_name( 'BR_TermsOfLiabilityAreAccepted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_BPIS_MICRO_COMPANY' ).
    lo_primitive_property->set_edm_name( 'BR_BPIsMicroCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_BPCOMPANY_SIZE_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_BPCompanySizeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_PISAND_COFINSDECLN_REGI' ).
    lo_primitive_property->set_edm_name( 'BR_PISAndCOFINSDeclnRegimen' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_ECONOMIC_ACTIVITY_NATL' ).
    lo_primitive_property->set_edm_name( 'BR_EconomicActivityNatlClfn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_BPLEGAL_NATURE_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_BPLegalNatureType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_REGIMEN_CODE' ).
    lo_primitive_property->set_edm_name( 'BR_TaxRegimenCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_ICMSTAX_PAYER_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_ICMSTaxPayerType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_INDUSTRY_MAIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_IndustryMainType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BR_TAX_DECLARATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'BR_TaxDeclarationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JP_SUPLR_AMT_IN_CAPITAL_AM' ).
    lo_primitive_property->set_edm_name( 'JP_SuplrAmtInCapitalAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JP_SUPPLIER_CAPITAL_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'JP_SupplierCapitalAmountCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER_COMPANY' ).
    lo_navigation_property->set_edm_name( 'to_SupplierCompany' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_COMPANY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER_PURCHASING_ORG' ).
    lo_navigation_property->set_edm_name( 'to_SupplierPurchasingOrg' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_PURCHASING_OR_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUPPLIER_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_SupplierText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SUPPLIER_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_supplier_with_holding__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SUPPLIER_WITH_HOLDING__2'
                                    is_structure              = VALUE tys_a_supplier_with_holding__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SupplierWithHoldingTaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SUPPLIER_WITH_HOLDING_TA' ).
    lo_entity_set->set_edm_name( 'A_SupplierWithHoldingTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_TYPE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_DATE_BEGIN' ).
    lo_primitive_property->set_edm_name( 'ExemptionDateBegin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_DATE_END' ).
    lo_primitive_property->set_edm_name( 'ExemptionDateEnd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXEMPTION_REASON' ).
    lo_primitive_property->set_edm_name( 'ExemptionReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_WITHHOLDING_TAX_SUBJECT' ).
    lo_primitive_property->set_edm_name( 'IsWithholdingTaxSubject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECIPIENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'RecipientType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CERTIFICAT' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCertificate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_EXMPT_PERC' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxExmptPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_duplicate_check.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'DUPLICATE_CHECK' ).
    lo_function->set_edm_name( 'DuplicateCheck' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'DUPLICATE_CHECK' ).
    lo_function_import->set_edm_name( 'DuplicateCheck' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'GET' ).


    lo_parameter = lo_function->create_parameter( 'INPUT' ).
    lo_parameter->set_edm_name( 'Input' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'INPUT' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DUPLICATE_CHECK_RESULT' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_duplicate_check_result.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'DUPLICATE_CHECK_RESULT'
                                    is_structure              = VALUE tys_duplicate_check_result( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'DuplicateCheckResult' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BUSINESS_PARTNER_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 163 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COUNTRY_NAME' ).
    lo_primitive_property->set_edm_name( 'CountryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REGION_NAME' ).
    lo_primitive_property->set_edm_name( 'RegionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATCH_RULE_NAME' ).
    lo_primitive_property->set_edm_name( 'MatchRuleName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATCH_SCORE' ).
    lo_primitive_property->set_edm_name( 'MatchScore' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

  ENDMETHOD.
ENDCLASS.
