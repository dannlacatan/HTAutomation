#KEYWORD_MEMBERSHIP.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Membership>Group
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_Memberships']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_Membership']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['SubMenuItem_Membership']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_GrpMembership']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_GrpMembership']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

#MEMBERSIHP CREATION
Click Membership New Button
    SEL.Click Element                           ${PAGE_MEMBERSHIP['Button_New']}

Provide Membership Group details
    [Arguments]    ${groupPlan}    ${uwPolType}    ${startDate}    ${frequecy}        
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_ADDMEMGRP['SearchIcon_Group']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    Sort Group List to descending 
    SEL.Click Element                           ${PAGE_GROUPSETUP['Link_GroupCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Index               ${PAGE_ADDMEMGRP['DropDown_GroupPlan']}                    ${groupPlan}    
    SEL.Wait Until Page Contains Element        ${PAGE_ADDMEMGRP['Option_UWPolicyType']} 
    SEL.Select From List By Index               ${PAGE_ADDMEMGRP['DropDown_UWPolicyType']}                 ${groupPlan}     
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_ADDMEMGRP['TextBox_StartDate']}                     ${startDate}          
    SEL.Select From List By Value               ${PAGE_ADDMEMGRP['DropDown_Frequency']}                    ${frequecy}

Save Membership Group details
    SEL.Click Element                           ${PAGE_ADDMEMGRP['Button_Save']}  

#MEMBERSHIP DETAILS
Navigate to Membership Details tab
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_TABS['Tab_MembershipDetails']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Click Change Status link
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_DETAILS['Link_ChangeStatus']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Set Membership Status to INFORCE   
    SEL.Select From List By Value               ${PAGE_POLICYSUMMARY_DETAILS['DropDown_StatusChangeTo']}    INFORCE
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_DETAILS['Link_StatusSaveButton']}

#ADDMEMBER
Navigate to Membership Members tab
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_TABS['Tab_Members']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Click Create New Member
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_MEMBERS['Button_CreateNewMember']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Provide Member information
    [Arguments]    ${memLname}    ${memFname}    ${memDOB}    ${gender}    ${smoker}
    SEL.Input Text                              ${PAGE_ADDNEWMEMBER['TextBox_LastName']}                    ${memLname}
    SEL.Input Text                              ${PAGE_ADDNEWMEMBER['TextBox_FirstName']}                   ${memFname}
    SEL.Input Text                              ${PAGE_ADDNEWMEMBER['TextBox_DOB']}                         ${memDOB}
    SEL.Select From List By Value               ${PAGE_ADDNEWMEMBER['DropDown_Gender']}                     ${gender}
    SEL.Select From List By Value               ${PAGE_ADDNEWMEMBER['DropDown_Smoker']}                     ${smoker}    

Click Save button
    SEL.Click Element                           ${PAGE_ADDNEWMEMBER['Button_Save']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Provide Membership Member information
    [Arguments]    ${relType}    ${relToApp}    ${memStatus}
    SEL.Select From List By Value               ${PAGE_POLICYSUMMARY_MEMBERS['DropDown_RelationshipType']}  ${relType}       
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Value               ${PAGE_POLICYSUMMARY_MEMBERS['DropDown_RelToApplicant']}    ${relToApp}
    SEL.Select From List By Value               ${PAGE_POLICYSUMMARY_MEMBERS['DropDown_MemberStatus']}      ${memStatus}

Click Save icon
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_MEMBERS['SaveIcon_Members']}   

#MEMBERSHIP PRODUCT OPTION
Navigate to Membership Product Option tab
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_TABS['Tab_ProductOptions']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Click Create Member Product button
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_PRODUCTOPTIONS['Button_CreateMemProduct']}
    SEL.Handle Alert                            action=ACCEPT
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}                      60 s

Generate Member Product
    SEL.Click Element                           ${PAGE_POLICYSUMMARY_PRODUCTOPTIONS['Button_GenerateMemProduct']}

#CREATE MEMBER PAYEE
Add Member Payee
    [Arguments]    ${address1}    ${region}    ${city}     ${postcode}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_MEMBER_PAYEE['Button_Add']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_MEMBER_PAYEE['TextBox_Address1']}                     ${address1}
    SEL.Select From List By Value               ${PAGE_MEMBER_PAYEE['DropDown_Region']}                      ${region}
    SEL.Wait Until Element Is Visible           ${PAGE_MEMBER_PAYEE['TextBox_City']}         
    SEL.Input Text                              ${PAGE_MEMBER_PAYEE['TextBox_City']}                         ${city}    
    SEL.Input Text                              ${PAGE_MEMBER_PAYEE['TextBox_PostCode']}                     ${postcode}
    SEL.Click Element                           ${PAGE_MEMBER_PAYEE['SearchIcon_BankAccount']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_BANKACOUNTS['Link_TypeTblHeader']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_BANKACOUNTS['Link_BankAccountName']}   
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_MEMBER_PAYEE['Button_Save']}

Select Member Payee
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_MEMBER_PAYEE['Link_PayableTo']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}