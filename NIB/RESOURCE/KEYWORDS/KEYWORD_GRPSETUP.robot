#KEYWORD_GRPSETUP.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Group Setup
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_Groups']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_GroupSetup']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_GroupSetup']}

#GROUP CREATION
Click Group Setup New Button
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Wait Until Page Contains Element        ${PAGE_GROUPSETUP['Button_New']}
    SEL.Click Element                           ${PAGE_GROUPSETUP['Button_New']}  

Provide Group details
    [Arguments]    ${groupName}    ${groupStartDate}    ${groupType}    ${branch}    ${frequency}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}                    
    SEL.Input Text                              ${PAGE_ADDGROUP['TextBox_GroupName']}                   ${groupName}
    SEL.Input Text                              ${PAGE_ADDGROUP['TextBox_StartDate']}                   ${groupStartDate}   
    SEL.Select From List By Value               ${PAGE_ADDGROUP['DropDown_GroupType']}                  ${groupType}
    SEL.Select From List By Value               ${PAGE_ADDGROUP['DropDownn_SalesRegion']}               ${branch}
    SEL.Select From List By Value               ${PAGE_ADDGROUP['DropDownn_BillingFreq']}               ${frequency}

Save Group details
    SEL.Click Element                           ${PAGE_ADDGROUP['Button_Save']}      

#GROUP DETAILS
Navigate to Group details
    SEL.Click Element                           ${PAGE_GROUPSUMMARY_TABS['Tab_Group']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Click Change Status button
    SEL.Click Element                            ${PAGE_GROUPSUMMARY_GROUP['Button_ChangeStatus']}
    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}

Set Group Status to INFORCE
    SEL.Select From List By Value                ${PAGE_GROUPSTATUSCHANGE['DropDown_StatusTo']}        INFORCE
    SEL.Click Element                            ${PAGE_GROUPSTATUSCHANGE['Button_Save']}
    SEL.Handle Alert                             action=ACCEPT

#GROUP CONTACTS
Navigate to Group Contacts tab
    SEL.Click Element                           ${PAGE_GROUPSUMMARY_TABS['Tab_Contacts']}  

Provide Group Contacts information
    [Arguments]    ${title}    ${pic_lastName}    ${pic_firstName}    ${pic_email}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Value               ${PAGE_GROUPSUMMARY_CONTACTS['DropDown_Title']}         ${title}
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_CONTACTS['TextBox_LastName']}       ${pic_lastName}
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_CONTACTS['TextBox_FirstName']}      ${pic_firstName}
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_CONTACTS['TextBox_EmailAddress']}   ${pic_email}

Save Group Contacts information
    SEL.Click Element                           ${PAGE_GROUPSUMMARY_CONTACTS['Button_Save']}

#GROUP ADDRESS
Navigate to Group Address tab
    SEL.Click Element                           ${PAGE_GROUPSUMMARY_TABS['Tab_Address']}

Provide Group Address information
    [Arguments]    ${grp_addressLine1}    ${grp_addressRegion}    ${grp_addressCity}    ${grp_addressPostCode}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_ADDRESS['TextBox_Address1']}        ${grp_addressLine1}
    SEL.Select From List By Value               ${PAGE_GROUPSUMMARY_ADDRESS['DropDown_Region']}         ${grp_addressRegion}
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_ADDRESS['TextBox_City']}            ${grp_addressCity}    
    SEL.Input Text                              ${PAGE_GROUPSUMMARY_ADDRESS['TextBox_PostCode']}        ${grp_addressPostCode}

Save Group Address information
    SEL.Click Element                           ${PAGE_GROUPSUMMARY_ADDRESS['Button_Save']}

#GROUP PLAN
Navigate to Group Plan tab
    SEL.Click Element                            ${PAGE_GROUPSUMMARY_TABS['Tab_GroupPlan']}

#GROUP ADVISOR
# Navigate to Group Advisor tab
#     SEL.Click Element                           ${PAGE_GROUPSUMMARY_TABS['Tab_Advisors']}

# Select Group Advisor
#    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
#    SEL.Click Element                            ${PAGE_GROUPSUMMARY_ADVISORS['SearchIcon_Principal']}
#    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
#    SEL.Click Element                            ${PAGE_ADVISORENITY['Link_AdvisorEntityCode']}

# Save Group Advisor
#    SEL.Wait Until Element Is Not Visible        ${GENERIC_COMPONENTS['Image_Loading']}
#    SEL.Click Element                            ${PAGE_GROUPSUMMARY_ADVISORS['SaveIcon_Principal']}