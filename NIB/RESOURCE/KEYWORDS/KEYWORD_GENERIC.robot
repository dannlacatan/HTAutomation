#KEYWORD_GENERIC.robot

*** Keywords ***
Validate display message
    [Arguments]    ${validation_msg}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}                  60 s
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['ValidationMessage']}
    SEL.Page Should Contain Element             ${GENERIC_COMPONENTS['ValidationMessage']}
    SEL.Page Should Contain                                                                             ${validation_msg} 

Scroll Down
    SEL.Execute Javascript                           window.scrollBy(900, 900);

Sort Group List to descending 
    SEL.Click Element                           ${PAGE_GROUPSETUP['Link_GroupCodeTblHeader']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_GROUPSETUP['Link_GroupCodeTblHeader']}    
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Navigate to Home
    SEL.Click Element                           ${GENERIC_COMPONENTS['MenuItem_Home']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}