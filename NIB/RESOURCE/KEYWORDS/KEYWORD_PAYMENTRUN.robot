#KEYWORD_PAYMENTRUN.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Payment Run
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}                  60s      
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_PremiumAcctng']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_PaymentRun']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_PaymentRun']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

    #NEW Payment Run
Click Payment Run New Button
    SEL.Click Element                           ${PAGE_PAYMENTRUN['Button_New']}

Provide Payment Run information
    [Arguments]    ${paymentCat}    ${uw}    ${bankAcc}    
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Value               ${PAGE_NEWPAYMENTRUN['DropDown_PaymentCategory']}        ${paymentCat}
    SEL.Wait Until Element Is Visible           ${PAGE_NEWPAYMENTRUN['TextBox_ClaimNumbers']}
    SEL.Select From List By Value               ${PAGE_NEWPAYMENTRUN['DropDown_Underwriter']}            ${uw}
    SEL.Select From List By Value               ${PAGE_NEWPAYMENTRUN['DropDown_BankAccount']}            ${bankAcc}
    SEL.Click Element                           ${PAGE_NEWPAYMENTRUN['Button_Save']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Process Payment Run
    BIN.Repeat Keyword    4 times               Payment Run Job
    

Payment Run Job
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_TABS['TextBox_Status']}                60s
    ${status} =        Get Element Attribute    ${PAGE_PAYMENTRUN_TABS['TextBox_Status']}                value
    
    Run Keyword If    '${status}' == 'SELECTED'           Authorize claims payment run
    ...    ELSE IF    '${status}' == 'AUTHORISED'         Generate Format
    ...    ELSE IF    '${status}' == 'FORMATTED'          Confirm Payment run
    ...    ELSE IF    '${status}' == 'CONFIRMED'          Check Review                               
    ...    ELSE                                           Click Refresh 

Click Refresh
    SEL.Click Element                           ${PAGE_PAYMENTRUN_TABS['Button_Refresh']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Authorize claims payment run
    SEL.Click Element                           ${PAGE_PAYMENTRUN_TABS['Tab_Authorise']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    Scroll Down
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_AUTHORISE['Button_ApproveAuthorise']}
    SEL.Click Element                           ${PAGE_PAYMENTRUN_AUTHORISE['Button_ApproveAuthorise']}
    Scroll Down
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_AUTHORISE['Button_ApproveAuthorise']}
    SEL.Click Element                           ${PAGE_PAYMENTRUN_AUTHORISE['Button_ApproveAuthorise']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Generate Format
    SEL.Click Element                           ${PAGE_PAYMENTRUN_TABS['Tab_Format']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_FORMAT['Button_Format']}
    SEL.Click Element                           ${PAGE_PAYMENTRUN_FORMAT['Button_Format']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Confirm Payment run
    SEL.Click Element                           ${PAGE_PAYMENTRUN_TABS['Tab_Confirm']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_CONFIRM['Button_Confirm']}
    SEL.Click Element                           ${PAGE_PAYMENTRUN_CONFIRM['Button_Confirm']}

Check Review
    SEL.Click Element                           ${PAGE_PAYMENTRUN_TABS['Tab_Review']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Wait Until Element Is Visible           ${PAGE_PAYMENTRUN_REVIEW['Button_RegenerateFiles']}
    SEL.Element Should Be Visible               ${PAGE_PAYMENTRUN_REVIEW['Button_RegenerateFiles']}