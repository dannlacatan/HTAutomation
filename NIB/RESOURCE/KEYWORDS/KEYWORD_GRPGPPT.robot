#KEYWORD_GRPGPPT.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Group Plan details
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_TABS['Tab_GroupPlan']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Set Group Plan to INFORCE
    SEL.Select From List By Value                ${PAGE_GPPTSUMMARY_GROUPPLAN['DropDown_ProductStatus']}    INFORCE
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_GROUPPLAN['Button_Save']}

Cancel from Group Plan details
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_GROUPPLAN['Button_Cancel']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

#ADD GPPT
Click Group Plan New Button
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                            ${PAGE_GROUPSUMMARY_GROUPPLAN['Button_New']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Provide Group Plan details
    [Arguments]    ${planName}    ${planType}    ${planStartDate}    ${paymentSource}    ${empPremType}
    SEL.Input Text                               ${PAGE_ADDGPPT['TextBox_GroupPlanName']}                   ${planName}
    SEL.Select From List By Value                ${PAGE_ADDGPPT['DropDown_PlanTypeName']}                   ${planType}
    SEL.Input Text                               ${PAGE_ADDGPPT['TextBox_StartDate']}                       ${planStartDate}
    SEL.Select From List By Value                ${PAGE_ADDGPPT['DropDown_PaymentSource']}                  ${paymentSource}
    SEL.Select From List By Value                ${PAGE_ADDGPPT['DropDown_EmpPremType']}                    ${empPremType}
    SEL.Click Element                            ${PAGE_ADDGPPT['SearchIcon_BaseProduct']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                            ${PAGE_PRODUCT['Link_ProductCode']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Save Group Plan details
    SEL.Click Element                            ${PAGE_ADDGPPT['Button_Save']}

#GPPT BILLING
Navigate to Group Plan Billing Details
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_TABS['Tab_Billing']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Add Group Plan Billing Account
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_BILLING['Link_AddBillingAcc']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Save Group Plan Billing Account
    Scroll Down
    SEL.Click Element                            ${PAGE_GPPT_ADDBILLACC['Button_Save']}

Save Group Plan Billing Details
    Scroll Down   
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_BILLING['Button_Save']}

#GPPT PRODUCT OPTION
Navigate to Group Plan Product Option
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_TABS['Tab_ProductOption']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}    

Click New Group Plan Product Option
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_PRODUCTOPTION['Button_New']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}    

Provide Group Plan Product Option information
    [Arguments]    ${subsidyLvl}    ${eligibility}    ${productCode}    ${productOptionCode}    ${subsidyBasis}    ${expected}            
    SEL.Select From List By Value                ${PAGE_GPPT_ADDPRODUCTOPTION['DropDown_SubsidyLevel']}            ${subsidyLvl}     
    SEL.Select From List By Value                ${PAGE_GPPT_ADDPRODUCTOPTION['DropDown_Eligibility']}             ${eligibility}     
    SEL.Select From List By Value                ${PAGE_GPPT_ADDPRODUCTOPTION['DropDown_ProductCode']}             ${productCode}   
    SEL.Wait Until Page Contains Element         ${PAGE_GPPT_ADDPRODUCTOPTION['Option_ProductOption']}             60 s
    SEL.Select From List By Index                ${PAGE_GPPT_ADDPRODUCTOPTION['DropDown_ProductOption']}           ${productOptionCode}   
    SEL.Select Radio Button                      ${PAGE_GPPT_ADDPRODUCTOPTION['RadioButton_SubsidyBasis']}         ${subsidyBasis}     
    BIN.Wait Until Keyword Succeeds                  10 s    200ms    Get UW Ratecard value                         ${expected} 

Get UW Ratecard value
    [Arguments]    ${expected}
    ${actual_value} =    Get Element Attribute   ${PAGE_GPPT_ADDPRODUCTOPTION['TextBox_UWRateCard']}               value
    BIN.Should Be Equal As Strings                   ${actual_value}        ${expected}

Save Group Plan Product Option information
    SEL.Click Element                            ${PAGE_GPPT_ADDPRODUCTOPTION['Button_Save']}  

#GPPT ADVISOR
Navigate to Group Plan Advisor
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_TABS['Tab_Advisors']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Select Group Plan Advisor
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_ADVISORS['SearchIcon_Advisors']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                            ${PAGE_ADVISORS['Link_AdvisorCode']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Save Group Plan Advisor
    SEL.Click Element                            ${PAGE_GPPTSUMMARY_ADVISORS['SaveIcon_Advisor']}