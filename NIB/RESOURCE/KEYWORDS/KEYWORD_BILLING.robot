#KEYWORD_BILLING.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Billing>Submission
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_PremiumAcctng']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_Billing']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['SubMenuItem_Billing']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_BillingSubm']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_BillingSubm']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

    #NEW BILLING SUBMISSION
Click Billing Submission New Button
    SEL.Click Element                           ${PAGE_BILLING['Button_New']}

Provide Billing Submission information
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_BILLINGSUBMISSION['SearchIcon_Group']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    Sort Group List to descending
    SEL.Click Element                           ${PAGE_GROUPSETUP['Link_GroupCode']}

Perform Preliminary Billing
    SEL.Click Element                           ${PAGE_BILLINGSUBMISSION['Button_SubmitPrelim']}
    SEL.Handle Alert                            action=ACCEPT
    Click Refresh button

Click Refresh button
    SEL.Wait Until Element Is Visible           ${PAGE_BILLINGSUBMISSION['Button_Refresh']}
    SEL.Click Element                           ${PAGE_BILLINGSUBMISSION['Button_Refresh']}

Click Submit Final button
    SEL.Wait Until Element Is Visible           ${PAGE_BILLINGSUBMISSION['Button_SubmitFinal']}
    SEL.Click Element                           ${PAGE_BILLINGSUBMISSION['Button_SubmitFinal']}
    SEL.Handle Alert                            action=ACCEPT   

Click Invoice button
    SEL.Wait Until Element Is Visible           ${PAGE_BILLINGSUBMISSION['Button_Invoice']}
    SEL.Click Element                           ${PAGE_BILLINGSUBMISSION['Button_Invoice']}
    SEL.Handle Alert                            action=ACCEPT   

Process Billing
    ${currStatus} =    Get Element Attribute    ${PAGE_BILLINGSUBMISSION['TextBox_CurrentStatus']}    value
    
    Run Keyword If    '${currStatus}' == 'Preliminary'    Click Submit Final button
    ...    ELSE IF    '${currStatus}' == 'Finalised'      Click Invoice button
    ...    ELSE IF    '${currStatus}' == 'Completed'      Validate Outputs
    ...    ELSE                                           Click Refresh button 

Validate Outputs
    SEL.Wait Until Element Is Visible           ${PAGE_BILLINGSUBMISSION['Button_Outputs']}
    SEL.Element Should Be Visible               ${PAGE_BILLINGSUBMISSION['Button_Outputs']}

Complete Billing Submission
    BIN.Repeat Keyword    3 times                         Process Billing
    