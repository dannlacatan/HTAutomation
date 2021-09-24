#KEYWORD_RECEIPT.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Receipts>Receipt Entry
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}                  60s      
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_PremiumAcctng']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_Receipts']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['SubMenuItem_Receipts']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_ReceiptEntry']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_ReceiptEntry']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

    #NEW BILLING SUBMISSION
Click Receipt Entry New Button
    SEL.Click Element                           ${PAGE_RECEIPT['Button_New']}

Provide Receipt Entry information
    [Arguments]    ${uw}    ${billAccType}    ${receiptMethod}    ${bankAcc}    ${comment}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Value               ${PAGE_ADDRECEIPT['DropDown_Underwriter']}               ${uw}
    SEL.Select From List By Value               ${PAGE_ADDRECEIPT['DropDown_BillingAccType']}            ${billAccType}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_ADDRECEIPT['SearchIcon_Group']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    Sort Group List to descending
    SEL.Click Element                           ${PAGE_GROUPSETUP['Link_GroupCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Set Selenium Speed                                                                               0.4 s
    SEL.Wait Until Page Contains Element        ${PAGE_ADDRECEIPT['Option_Invoices']}
    SEL.Select All From List                    ${PAGE_ADDRECEIPT['List_Invoices']}                      
    SEL.Select From List By Value               ${PAGE_ADDRECEIPT['DropDown_ReceiptMethod']}             ${receiptMethod}
    SEL.Wait Until Page Contains Element        ${PAGE_ADDRECEIPT['Option_BankAccNumber']}               60s
    SEL.Select From List By Value               ${PAGE_ADDRECEIPT['DropDown_BankAccNumber']}             ${bankAcc}
    SEL.Input Text                              ${PAGE_ADDRECEIPT['TextArea_Comment']}                   ${comment}
    Scroll Down

Save Receipt Entry information
    SEL.Click Element                           ${PAGE_ADDRECEIPT['Button_Save']}

Navigate to Membership Application
    SEL.Set Selenium Speed                                                                               0 ms
    Scroll Down
    SEL.Click Element                           ${PAGE_ADDRECEIPT['Link_PolicyApplication']}

Select Preliminary Match All
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select Checkbox                             ${PAGE_POLICYAPPLICATION['CheckBox_PrelimMatchAll']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Save Membership Application
    SEL.Click Element                           ${PAGE_POLICYAPPLICATION['Button_Save']}