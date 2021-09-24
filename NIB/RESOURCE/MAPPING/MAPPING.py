#MAPPING.py

GENERIC_COMPONENTS            =   {
    "Image_Loading"             :   "xpath://div/img",
    "ValidationMessage"         :   "xpath://ul[@id='header:errormsg']//span",
    "MenuItem_Logout"           :   "xpath://span[contains(normalize-space(.),'Logout')]",
    "MenuItem_Home"             :   "xpath://span[contains(normalize-space(.),'Home')]",
    "MenuItem_Groups"           :   "xpath://div[@id='header_j_id_jsp_1924074943_1j_id_0_navMenu_menu']//descendant::td[1]/span[2]",
    "SubMenuItem_GroupSetup"    :   "xpath://div[@id='cmSubMenuID1']//tr[1]/td[2]",
    "MenuItem_Memberships"      :   "xpath://div[@id='header_j_id_jsp_1924074943_1j_id_0_navMenu_menu']//descendant::td[2]/span[2]",
    "SubMenuItem_Membership"    :   "xpath://div[@id='cmSubMenuID3']//tr[2]/td[2]",
    "SubMenuItem_GrpMembership" :   "xpath://div[@id='cmSubMenuID4']//tr[2]/td[2]",
    "MenuItem_PremiumAcctng"    :   "xpath://div[@id='header_j_id_jsp_1924074943_1j_id_0_navMenu_menu']//descendant::td[4]/span[2]",
    "SubMenuItem_Billing"       :   "xpath://div[@id='cmSubMenuID12']//tr[1]/td[2]",
    "SubMenuItem_BillingSubm"   :   "xpath://div[@id='cmSubMenuID13']//tr[1]/td[2]",
    "SubMenuItem_Receipts"      :   "xpath://div[@id='cmSubMenuID12']//tr[2]/td[2]",
    "SubMenuItem_ReceiptEntry"  :   "xpath://div[@id='cmSubMenuID14']//tr[1]/td[2]",
    "MenuItem_Claims"           :   "xpath://div[@id='header_j_id_jsp_1924074943_1j_id_0_navMenu_menu']//descendant::td[3]/span[2]",
    "SubMenuItem_PAClaim"       :   "xpath://div[@id='cmSubMenuID8']//tr[1]/td[2]",
    "SubMenuItem_IPClaim"       :   "xpath://div[@id='cmSubMenuID8']//tr[2]/td[2]",
    "SubMenuItem_OPClaim"       :   "xpath://div[@id='cmSubMenuID8']//tr[3]/td[2]",
    "SubMenuItem_PaymentRun"    :   "xpath://div[@id='cmSubMenuID12']//tr[7]/td[2]",
}

PAGE_LOGIN                  =   {
    "TextBox_UserName"          :   "id:name",
    "TextBox_Password"          :   "id:pwd",
    "Button_Logon"              :   "id:submit"
}

PAGE_GROUPSETUP             =   {
    "Breadcrumb_GroupSetup"     :   "xpath://span[@class='breadcrumbs']",
    "Button_New"                :   "xpath://div[@id='body:mainForm:buttonBar:j_id_jsp_120012412_0j_id_0']//td[2]/a",
    "Link_GroupCodeTblHeader"   :   "xpath://table[@id='body:gridForm:grid:dataGrid']/thead//span[contains(text(),'Group Code')]",
    "Link_GroupCode"            :   "xpath://table[@id='body:gridForm:grid:dataGrid']/tbody/tr[1]/td[1]/a",
}

PAGE_ADDGROUP               =   {
    "TextBox_GroupName"         :   "xpath://input[@id='body:groupsFm:GroupsForm:name']",
    "DropDown_GroupType"        :   "xpath://select[@id='body:groupsFm:GroupsForm:groupTypeCode']",
    "DropDownn_SalesRegion"     :   "xpath://select[@id='body:groupsFm:GroupsForm:salesRegion']",
    "DropDownn_BillingFreq"     :   "xpath://select[@id='body:groupsFm:GroupsForm:billingFrequency']",
    "TextBox_StartDate"         :   "xpath://input[@id='body:groupsFm:GroupsForm:groupStartDate']",
    "Button_Save"               :   "xpath://a[@id='body:groupsFm:saveGroupBtn']"    
}

PAGE_GROUPSUMMARY_TABS      =   {
    "Tab_Group"                 :   "xpath://td[@id='body:groupsTab_headerCell']",
    "Tab_Contacts"              :   "xpath://td[@id='body:groupsContactTab_headerCell']",
    "Tab_Address"               :   "xpath://td[@id='body:groupsAddressTab_headerCell']",
    "Tab_Advisors"              :   "xpath://td[@id='body:groupsAdvisorTab_headerCell']",
    "Tab_GroupPlan"             :   "xpath://td[@id='body:groupsPlanTab_headerCell']"
}

PAGE_GROUPSUMMARY_GROUP     =   {
    "Button_ChangeStatus"       :   "xpath://a[@id='body:groupsTab:groupsFm:changeGroupStatusBtn']"
}

PAGE_GROUPSTATUSCHANGE      =   {
    "DropDown_StatusTo"         :   "xpath://select[@id='body:mainForm:newGroupStatusInput']",
    "Button_Save"               :   "xpath://a[@id='body:mainForm:saveChangeGroupStatusBtn']"
}

PAGE_GROUPSUMMARY_CONTACTS  =   {
    "DropDown_Title"            :   "xpath://select[@id='body:groupsContactTab:groupsContactFm:keyContactForm:title']",
    "TextBox_LastName"          :   "xpath://input[@id='body:groupsContactTab:groupsContactFm:keyContactForm:lastName']",
    "TextBox_FirstName"         :   "xpath://input[@id='body:groupsContactTab:groupsContactFm:keyContactForm:firstName']",
    "TextBox_EmailAddress"      :   "xpath://input[@id='body:groupsContactTab:groupsContactFm:keyContactForm:email']",
    "Button_Save"               :   "xpath://a[@id='body:groupsContactTab:groupsContactFm:contacsSaveBtn']",
}

PAGE_GROUPSUMMARY_ADDRESS   =   {
    "TextBox_Address1"          :   "xpath://input[@id='body:groupsAddressTab:groupsAddressFm:streetAddressForm:address1']",
    "DropDown_Region"           :   "xpath://select[@id='body:groupsAddressTab:groupsAddressFm:streetAddressForm:regionsList']",
    "TextBox_City"              :   "xpath://input[@id='body:groupsAddressTab:groupsAddressFm:streetAddressForm:city']",
    "TextBox_PostCode"          :   "xpath://input[@id='body:groupsAddressTab:groupsAddressFm:streetAddressForm:postcode']",
    "Button_Save"               :   "xpath://a[@id='body:groupsAddressTab:groupsAddressFm:saveBtnAddress']"
}

PAGE_GROUPSUMMARY_ADVISORS  =   {
    "SearchIcon_Principal"      :   "xpath://input[@id='body:groupsAdvisorTab:principleAdvisorGrid:primaryAdvisorFm:dataGrid:0:dynamicColumns:1_1:j_id_jsp_260323230_67j_id_0']",
    "SaveIcon_Principal"        :   "xpath://table[@id='body:groupsAdvisorTab:j_id_jsp_64687684_12j_id_0']//descendant::a[2]"
}

PAGE_GROUPSUMMARY_GROUPPLAN =   {
    "Button_New"                :   "xpath://a[@id='body:groupsPlanTab:groupsPlanTabFm:addNewGroupPlanBtn']"
}

PAGE_ADDGPPT                =   {
    "TextBox_GroupPlanName"     :   "xpath://input[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:groupPlanName']",
    "DropDown_PlanTypeName"     :   "xpath://select[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:groupPlanTypeNameDropdown']",
    "TextBox_StartDate"         :   "xpath://input[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:gpptStartDate']",
    "DropDown_PaymentSource"    :   "xpath://select[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:paymentSource']",
    "DropDown_EmpPremType"      :   "xpath://select[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:employeePremTypeCode']",
    "SearchIcon_BaseProduct"    :   "xpath://a[@id='body:groupPlanPolicyTypeFm:insertPlanPolicyTypeForm:searchProduct']",
    "Button_Save"               :   "xpath://a[@id='body:groupPlanPolicyTypeFm:saveGroupPlanBtn']"
}

PAGE_GPPTSUMMARY_TABS       =   {
    "Tab_Billing"               :   "xpath://td[@id='body:billingDetailsTab_headerCell']",
    "Tab_ProductOption"         :   "xpath://td[@id='body:productOptionsTab_headerCell']",
    "Tab_Advisors"              :   "xpath://td[@id='body:advisorTab_headerCell']",
    "Tab_GroupPlan"             :   "xpath://td[@id='body:planPolicyTypeTab_headerCell']"
}

PAGE_GPPTSUMMARY_GROUPPLAN  =   {
    "DropDown_ProductStatus"    :   "xpath://select[@id='body:planPolicyTypeTab:policyTypeList:groupPlanPolicyTypeFm:updatePlanPolicyTypeForm:groupPlanPolicyTypeStatus']",
    "Button_Save"               :   "xpath://a[@id='body:planPolicyTypeTab:policyTypeList:groupPlanPolicyTypeFm:saveGroupPlanBtn']",
    "Button_Cancel"             :   "xpath://a[@id='body:planPolicyTypeTab:policyTypeList:groupPlanPolicyTypeFm:cancelChangeStatusBtn']"
}

PAGE_GPPTSUMMARY_BILLING    =   {
    "Link_AddBillingAcc"        :   "xpath://a[@id='body:billingDetailsTab:billingDetails:groupPlanPolicyTypeFmBilling:addAnotherBillingAccountLinkBtn']",
    "Button_Save"               :   "xpath://a[@id='body:billingDetailsTab:billingDetails:groupPlanPolicyTypeFmBilling:saveBillingDetailsBtn']"
}

PAGE_GPPT_ADDBILLACC =   {
    "Button_Save"               :   "xpath://a[@id='body:addBillingForm:addBillingDetailsBtn']"
}

PAGE_GPPTSUMMARY_PRODUCTOPTION     =   {
    "Button_New"                :   "xpath://a[@id='body:productOptionsTab:productOptions:gpptProdOptionFm:newProductOptionsBtn']"
}

PAGE_GPPT_ADDPRODUCTOPTION         =   {
    "DropDown_ProductCode"      :   "xpath://select[@id='productCode']",
    "DropDown_ProductOption"    :   "xpath://select[@id='productOptionCode']",
    "Option_ProductOption"      :   "xpath://select[@id='productOptionCode']/option[2]",
    "DropDown_SubsidyLevel"     :   "xpath://select[@id='subsidyLevelCode']",
    "DropDown_Eligibility"      :   "xpath://select[@id='body:gpptProductOption:eligibility']",
    "RadioButton_SubsidyBasis"  :   "body:gpptProductOption:subsidisedAmt",
    "SearchIcon_AdminRateCard"  :   "xpath://a[@id='body:gpptProductOption:searchAdminRatecard']",
    "SearchIcon_UWRateCard"     :   "xpath://a[@id='body:gpptProductOption:searchUndRatecard']",
    "TextBox_UWRateCard"        :   "xpath://input[@id='body:gpptProductOption:undRateCardName']",
    "Button_Save"               :   "xpath://a[@id='body:gpptProductOption:cm1']"
}

PAGE_GPPTSUMMARY_ADVISORS   =   {
    "SearchIcon_Advisors"       :   "xpath://a[@id='dataGrid:0:searchAdvisor']", #locator should be per td, needs to  be changed if multiple advisors
    "SaveIcon_Advisor"          :   "xpath://tr[@class='grid-row-even']/td[11]/a" #locator should be per td, needs to  be changed if multiple advisors
}

PAGE_MEMBERSHIP             =   {
    "Button_New"                :   "xpath://a[@id='body:mainForm:buttonBar:newEntity']",
    "Link_MembershipNumber"     :   "xpath://table[@id='body:mainForm:grid:dataGrid']/tbody/tr[1]/td[1]/a",
}

PAGE_ADDMEMGRP              =   {
    "SearchIcon_Group"          :   "xpath://a[@id='body:mainForm:searchGroup']",
    "DropDown_GroupPlan"        :   "xpath://select[@id='body:mainForm:groupPlanId']",
    "DropDown_UWPolicyType"     :   "xpath://select[@id='body:mainForm:policyTypeId']",
    "Option_UWPolicyType"       :   "xpath://select[@id='body:mainForm:policyTypeId']/option",
    "TextBox_StartDate"         :   "xpath://input[@id='body:mainForm:startDate']",
    "DropDown_Frequency"        :   "xpath://select[@id='body:mainForm:frequencyCode']",
    "Button_Save"               :   "xpath://a[@id='body:mainForm:saveMemberBtn']"
}

PAGE_POLICYSUMMARY_TABS     =   {
    "Tab_Members"               :   "xpath://td[@id='body:policyMembersTab_headerCell']",
    "Tab_ProductOptions"        :   "xpath://td[@id='body:productOptions_headerCell']",
    "Tab_MembershipDetails"     :   "xpath://td[@id='body:policyDetailsTab_headerCell']"
}

PAGE_POLICYSUMMARY_MEMBERS  =   {
    "Button_CreateNewMember"    :   "xpath://input[@id='body:policyMembersTab:policyMemberFm:addMemberBtn']",
    "DropDown_RelationshipType" :   "xpath://select[@id='body:policyMembersTab:policyMemberFm:memberGrid:dataGrid:0:dynamicColumns:0_0:relationShip']",
    "DropDown_RelToApplicant"   :   "xpath://select[@id='body:policyMembersTab:policyMemberFm:memberGrid:dataGrid:0:dynamicColumns:2_2:relationShipTypeCbox']",
    "DropDown_MemberStatus"     :   "xpath://select[@id='body:policyMembersTab:policyMemberFm:memberGrid:dataGrid:0:dynamicColumns:13_13:relationShipTypeCbox']",
    "SaveIcon_Members"          :   "xpath://input[@id='body:policyMembersTab:policyMemberFm:memberGrid:dataGrid:0:savebtn']"
}

PAGE_POLICYSUMMARY_DETAILS  =   {
    "Link_ChangeStatus"         :   "xpath://td[@id='body:policyDetailsTab:policyDetailsFm:policydetailedit:j_id_jsp_2069543795_154j_id_0']//td[1]/a",
    "DropDown_StatusChangeTo"   :   "xpath://select[@id='body:policyDetailsTab:policyDetailsFm:editpolicystatus:policyStatus']",
    "Link_StatusSaveButton"     :   "xpath://a[@id='body:policyDetailsTab:policyDetailsFm:updatePolicyStatusBtn']",

}

PAGE_ADDNEWMEMBER           =   {
    "TextBox_LastName"          :   "xpath://input[@id='body:newMember:mainForm:surname']",
    "TextBox_FirstName"         :   "xpath://input[@id='body:newMember:mainForm:firstName']",
    "TextBox_DOB"               :   "xpath://input[@id='body:newMember:mainForm:mpdob']",
    "DropDown_Gender"           :   "xpath://select[@id='body:newMember:mainForm:mpgender']",
    "DropDown_Smoker"           :   "xpath://select[@id='body:newMember:mainForm:mpsmoker']",
    "Button_Save"               :   "xpath://a[@id='body:newMember:mainForm:saveMemberDetailsBtn']"
}

PAGE_MEMBER_PAYEE           =   {
    "Button_Add"                :   "xpath://td[@id='body:buttonForm:j_id_jsp_1954996486_55j_id_0']/a",
    "TextBox_Address1"          :   "xpath://input[@id='body:payeetab:payeeForm:address1']",
    "DropDown_Region"           :   "xpath://select[@id='body:payeetab:payeeForm:regionsList']",
    "TextBox_City"              :   "xpath://input[@id='body:payeetab:payeeForm:city']",
    "TextBox_PostCode"          :   "xpath://input[@id='body:payeetab:payeeForm:postcode']",
    "SearchIcon_BankAccount"    :   "xpath://td[@id='body:payeetab:payeeForm:j_id_jsp_198729519_128j_id_0']//a",
    "Button_Save"               :   "xpath://td[@id='body:payeetab:payeeForm:j_id_jsp_198729519_173j_id_0']/a",
    "Link_PayableTo"            :   "xpath://table[@id='body:memberPayeesGrid:payeeForm:dataGrid']/tbody//td[2]/a",
}

PAGE_POLICYSUMMARY_PRODUCTOPTIONS   =   {
    "Button_CreateMemProduct"   :   "xpath://input[@id='body:productOptions:productOptionsFm:j_id_jsp_1420978218_15j_id_0']",
    "Button_GenerateMemProduct" :   "xpath://td[@id='body:memberProduct:memberProductFm:j_id_jsp_650766138_37j_id_0']//td[1]",

}

PAGE_BILLING                =   {
    "Button_New"                :   "xpath://div[@id='body:mainForm:buttonBar:j_id_jsp_1614197180_83j_id_0']//td[2]/a"
}

PAGE_BILLINGSUBMISSION      =   {
    "SearchIcon_Group"          :   "xpath://a[@id='body:mainForm:searchGroup']",
    "Button_SubmitPrelim"       :   "xpath://td[@id='body:mainForm:j_id_jsp_1252003774_142j_id_0']//a",
    "Button_Refresh"            :   "xpath://td[@id='body:mainForm:j_id_jsp_1252003774_149j_id_0']//a",
    "Button_SubmitFinal"        :   "xpath://td[@id='body:mainForm:j_id_jsp_1252003774_144j_id_0']//a",
    "Button_Invoice"            :   "xpath://td[@id='body:mainForm:j_id_jsp_1252003774_132j_id_0']//a",
    "Button_Outputs"            :   "xpath://td[@id='body:mainForm:j_id_jsp_1252003774_138j_id_0']//a",
    "TextBox_CurrentStatus"     :   "xpath://input[@id='body:mainForm:j_id_jsp_1252003774_105j_id_0']"
}

PAGE_RECEIPT                =   {
    "Button_New"                :   "xpath://div[@id='body:mainForm:buttonBar:j_id_jsp_120012412_0j_id_0']//td[2]/a"    
}

PAGE_ADDRECEIPT             =   {
    "DropDown_Underwriter"      :   "xpath://select[@id='body:receiptFm:insertReceiptForm:underwriter']",
    "DropDown_BillingAccType"   :   "xpath://select[@id='body:receiptFm:insertReceiptForm:billingAccType']",
    "SearchIcon_Group"          :   "xpath://a[@id='body:receiptFm:insertReceiptForm:searchGroup']",
    "List_Invoices"             :   "xpath://select[@id='body:receiptFm:insertReceiptForm:custPaymentInvoiceInvs']",
    "Option_Invoices"           :   "xpath://select[@id='body:receiptFm:insertReceiptForm:custPaymentInvoiceInvs']/option[1]",
    "DropDown_ReceiptMethod"    :   "xpath://select[@id='body:receiptFm:insertReceiptForm:receiptMethod']",
    "DropDown_BankAccNumber"    :   "xpath://select[@id='body:receiptFm:insertReceiptForm:bankAccountNum']",
    "Option_BankAccNumber"      :   "xpath://select[@id='body:receiptFm:insertReceiptForm:bankAccountNum']/option[2]",
    "Button_Save"               :   "xpath://td[@id='body:receiptFm:j_id_jsp_1212923639_30j_id_0']/a",
    "Link_PolicyApplication"    :   "xpath://div[@id='body:receiptFm:j_id_jsp_1212923639_11j_id_0']/a[1]",
    "TextArea_Comment"          :   "xpath://textarea[@id='body:receiptFm:insertReceiptForm:comment']"
}

PAGE_POLICYAPPLICATION      =   {
    "CheckBox_PrelimMatchAll"   :   "xpath://input[@id='body:mainForm:policyApplicationGrid:preliminaryMatch']",
    "Button_Save"               :   "xpath://td[@id='body:mainForm:j_id_jsp_43158797_20j_id_0']/a",    
}

PAGE_PAYMENTRUN             =   {
    "Button_New"                :   "xpath://div[@id='body:mainForm:j_id_jsp_1971845684_66j_id_0']//td[2]/a",
}

PAGE_NEWPAYMENTRUN          =   {
    "DropDown_PaymentCategory"  :   "xpath://select[@id='body:mainForm:insertPaymentRunForm:paymentCategory']",
    "TextBox_ClaimNumbers"      :   "xpath://input[@id='body:mainForm:insertPaymentRunForm:claimNumbers']",
    "DropDown_Underwriter"      :   "xpath://select[@id='body:mainForm:insertPaymentRunForm:underwriterInsert']",
    "DropDown_BankAccount"      :   "xpath://select[@id='body:mainForm:insertPaymentRunForm:bankAccount']",
    "Button_Save"               :   "xpath://td[@id='body:mainForm:j_id_jsp_2084960822_14j_id_0']//a",
}

PAGE_PAYMENTRUN_TABS        =   {
    "Button_Refresh"            :   "xpath://td[@id='body:mainForm:j_id_jsp_376848660_19j_id_0']//a",
    "TextBox_Status"            :   "xpath://input[@id='body:mainForm:j_id_jsp_559352730_39j_id_0']",
    "Tab_Review"                :   "xpath://input[@name='body:j_id_jsp_376848660_27j_id_0.0']",
    "Tab_Authorise"             :   "xpath://input[@name='body:j_id_jsp_376848660_27j_id_0.1']",
    "Tab_Format"                :   "xpath://input[@name='body:j_id_jsp_376848660_27j_id_0.2']",
    "Tab_Confirm"               :   "xpath://input[@name='body:j_id_jsp_376848660_27j_id_0.3']",
}

PAGE_PAYMENTRUN_REVIEW      =   {
    "Button_RegenerateFiles"    :   "xpath://div[@id='body:j_id_jsp_376848660_28j_id_0:reviewFrm:j_id_jsp_376848660_32j_id_0']//td[1]/a",
}

PAGE_PAYMENTRUN_AUTHORISE   =   {
    "Button_ApproveAuthorise"   :   "xpath://div[@id='body:j_id_jsp_376848660_38j_id_0:aothoriseFrm:j_id_jsp_376848660_45j_id_0']//td[1]//a[1]",
}

PAGE_PAYMENTRUN_FORMAT      =   {
    "Button_Format"             :   "xpath://div[@id='body:j_id_jsp_376848660_50j_id_0:formatFrm:formatGrid:j_id_jsp_376848660_56j_id_0']//td[1]//a[1]",
}

PAGE_PAYMENTRUN_CONFIRM     =   {
    "Button_Confirm"             :   "xpath://div[@id='body:j_id_jsp_376848660_61j_id_0:confirmFrm:comfirmGrid:j_id_jsp_376848660_66j_id_0']//td[1]//a[1]",
}

PAGE_CLAIM                  =   {
    "Button_New"                :   "xpath://a[@id='body:claimBulkGrid:mainForm:ButtonBar:newClaimBtn']"
}

PAGE_NEWCLAIM               =   {
    "SearchIcon_MemberID"       :   "xpath://a[@id='body:claimTab3:mainForm2:searchPolicy']",
    "DropDown_PatientName"      :   "xpath://select[@id='body:claimTab3:mainForm2:patientName']",
    "Option_Products"           :   "xpath://select[@id='body:claimTab3:mainForm2:claimPolicyProduct']/option",
    "Button_Save"               :   "xpath://a[@id='body:claimTab3:mainForm2:saveClaimBtn']",
}

PAGE_CLAIMSUMMARY           =   {
    "SearchIcon_Condition"      :   "xpath://a[@id='conditionGrid3:0:searchClaimCondition3']",
    "TextBox_Condition"         :   "xpath://input[@id='conditionGrid3:0:conditionCode3']",
    "Link_AddCondition"         :   "xpath://a[@id='conditionGrid3:0:addCondition3']",
    "TextBox_Treatment"         :   "xpath://input[@id='treatmentGrid:0:treatmentCode1']",
    "Link_AddTreatment"         :   "xpath://a[@id='treatmentGrid:0:addTreatment1']",
}

PAGE_CLAIMSUMMARY_PA        =   {
    "TextBox_Condition"         :   "xpath://input[@id='conditionGrid1:0:conditionCode']",
    "Link_AddCondition"         :   "xpath://a[@id='conditionGrid1:0:addCondition']",
    "TextBox_Treatment"         :   "xpath://input[@id='body:claimTab:mainForm:treatmentGrid:0:treatmentCode']",
    "Link_AddTreatment"         :   "xpath://a[@id='body:claimTab:mainForm:treatmentGrid:0:searchPATreatment']//following-sibling::a",
    "SearchIcon_ProvFac"        :   "xpath://a[@id='body:claimTab:mainForm:searchPAFacility']",
    "Button_SavePAInfo"         :   "xpath://div[@id='body:claimTab:mainForm:j_id_jsp_144239814_0j_id_0']//td[1]/a",
    "TextBox_PropTreatmentDate" :   "xpath://input[@id='body:claimTab:mainForm:treatmentDate']",
    "Button_Adjudicate"         :   "xpath://a[@id='body:claimTab:mainForm:adjpabtn']",
    "Button_Approve"            :   "xpath://a[@id='body:claimTab:mainForm:apprpabtn']",
    "Button_Authorize"          :   "xpath://a[@id='body:claimTab:mainForm:authpabtn']",
    "Link_ConvertToClaim"       :   "xpath://td[@id='body:claimTab:mainForm:j_id_jsp_934580955_397j_id_0']/a[1]",
}

PAGE_CLAIMSUMMARY_OP        =   {
    "TextBox_TotAmtIncurred"    :   "xpath://input[@id='body:claimTab1:mainForm:submittedClaimAmt']",
    "Button_SaveOPInfo"         :   "xpath://a[@id='body:claimTab1:mainForm:claimButtons:saveClaimBtn']",
    "TextArea_ClaimNotes"       :   "xpath://textarea[@name='body:claimTab1:mainForm:j_id_jsp_492168141_284j_id_0']",
    "Button_SaveOPInfo"         :   "xpath://a[@id='body:claimTab1:mainForm:claimButtons:saveClaimBtn']",
    "Button_Adjudicate"         :   "xpath://a[@id='body:claimTab1:mainForm:claimButtons:adjPCCBtn']",
    "Button_Approve"            :   "xpath://a[@id='body:claimTab1:mainForm:claimButtons:approvalBtn']",
    "Button_Authorize"          :   "xpath://a[@id='body:claimTab1:mainForm:claimButtons:authoriseBtn']",
}

PAGE_CLAIMSUMMARY_IP        =   {
    "TextBox_TotAmtIncurred"    :   "xpath://input[@id='body:claimTab:mainForm:submittedClaimAmt']",
    "TextArea_Diagnosis"        :   "xpath://textarea[@id='body:claimTab:mainForm:actDiagnosis']",
    "TextArea_Procedure"        :   "xpath://textarea[@id='body:claimTab:mainForm:actProcedure']",
    "SearchIcon_ProvFac"        :   "xpath://a[@id='body:claimTab:mainForm:searchPriovider']",
    "TextBox_AdmissionDate"     :   "xpath://input[@id='hospitalGrid:0:admissionDate']",
    "TextBox_TreatmentDate"     :   "xpath://input[@id='hospitalGrid:0:operationDate']",    
    "TextBox_DischargeDate"     :   "xpath://input[@id='hospitalGrid:0:dischargeDate']",   
    "Button_SaveIPInfo"         :   "xpath://a[@id='body:claimTab:mainForm:claimButtons:saveClaimBtn']",
    "Button_Adjudicate"         :   "xpath://a[@id='body:claimTab:mainForm:claimButtons:adjBtn']",
    "Button_Approve"            :   "xpath://a[@id='body:claimTab:mainForm:claimButtons:approvalBtn']",
    "Button_Authorize"          :   "xpath://a[@id='body:claimTab:mainForm:claimButtons:authoriseBtn']",
    "DropDown_Status"           :   "xpath://select[@id='body:claimTab:mainForm:claimStatusList']",
}

PAGE_CLAIMSUMMARY_CLAIMLINE =   {
    "DropDown_Service"          :   "xpath://select[@id='dataGrid:0:benefit']",
    "SearchIcon_Payee"          :   "xpath://a[@id='dataGrid:0:searchPayable']",
    "TextBox_ClaimAmount"       :   "xpath://input[@id='dataGrid:0:claimAmt']",
    "SaveIcon_ClaimLine"        :   "xpath://input[@id='dataGrid:0:saveBtn']",
    "TextBox_TreatmentDate"     :   "xpath://input[@id='dataGrid:0:treatmentDateC']", 
    "EditIcon_ClaimLine"        :   "xpath://input[@id='dataGrid:0:editBtn']",
}

PAGE_CLAIMSUMMARY_PACLAIMLINE =   {
    "DropDown_Service"          :   "xpath://select[@id='dataGrid:0:productBenefit']",
    "SearchIcon_Provider"       :   "xpath://tbody[@id='dataGrid:tbody_element']//td[4]/a",
    "SearchIcon_Facility"       :   "xpath://tbody[@id='dataGrid:tbody_element']//td[6]/a",
    "SaveIcon_ClaimLine"        :   "xpath://input[@id='dataGrid:0:savebtn']",
}

PAGE_FACILITY               =   {
    "Link_FacilityCode"         :   "xpath://table[@id='body:gridForm:dataGrid']/tbody/tr[1]/td[1]/a",
    "Link_PAFacilityCode"       :   "xpath://table[@id='body:gridForm:grid:dataGrid']/tbody/tr[1]/td[1]/a",
}

PAGE_FACILITY_PAYEE           =   {
    "Link_PayableTo"            :   "//table[@id='body:payeetab:payeeForm:payeesGrid:dataGrid']/tbody//td[1]/a",
}

PAGE_ADVISORENITY           =   {
    "Link_AdvisorEntityCode"    :   "xpath://a[@id='body:advisorEntityForm:gridForm:grid:dataGrid:0:dynamicColumns:0_0:link']" #Dynamic value, needs to be changed
}

PAGE_ADVISORS               =   {
    "Link_AdvisorCode"          :   "xpath://a[@id='body:j_id_jsp_2101016911_49j_id_0:grid:dataGrid:0:dynamicColumns:0_0:link']" #Dynamic value, needs to be changed
}

PAGE_BANKACOUNTS            =   {
    "Link_TypeTblHeader"        :   "xpath://table[@id='body:gridForm:grid:dataGrid']/thead//th[3]/a",
    "Link_BankAccountName"      :   "xpath://tbody[@id='body:gridForm:grid:dataGrid:tbody_element']/tr[1]/td[1]/a",
}

PAGE_PRODUCT                =   {
    "Link_ProductCode"          :   "xpath://a[@id='body:mainForm:grid:dataGrid:10:dynamicColumns:0_0:link']" #Dynamic value, needs to be changed
}
