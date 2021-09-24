#KEYWORD_CLAIMS.robot

*** Settings ***
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot

*** Keywords ***
Navigate to Claims>Hospital Claims
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_Claims']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_IPClaim']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_IPClaim']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Navigate to Claims>Primary Care Claims
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_Claims']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_OPClaim']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_OPClaim']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Navigate to Claims>Prior Approval Claims
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Mouse Over                              ${GENERIC_COMPONENTS['MenuItem_Claims']}
    SEL.Wait Until Element Is Visible           ${GENERIC_COMPONENTS['SubMenuItem_PAClaim']}
    SEL.Click Element                           ${GENERIC_COMPONENTS['SubMenuItem_PAClaim']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

    #NEW CLAIMS
Click Claims New Button
    Scroll Down
    SEL.Click Element                           ${PAGE_CLAIM['Button_New']}

Provide Policy information
    [Arguments]    ${patientName}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_NEWCLAIM['SearchIcon_MemberID']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_MEMBERSHIP['Link_MembershipNumber']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Select From List By Index               ${PAGE_NEWCLAIM['DropDown_PatientName']}              ${patientName}
    SEL.Wait Until Page Does Not Contain                                                              Select...
    SEL.Click Element                           ${PAGE_NEWCLAIM['Button_Save']}    
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

#PA CLAIM
Provide Prior Approval Claim Header information
    [Arguments]    ${totAmtIncurred}    ${conditionCode}    ${treatmentCode}    ${propTreatmentDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_TotAmtIncurred']}        ${totAmtIncurred}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_PA['TextBox_Condition']}             ${conditionCode}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Link_AddCondition']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_PA['TextBox_Treatment']}             ${treatmentCode}    
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Link_AddTreatment']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}  
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['SearchIcon_ProvFac']}  
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_FACILITY['Link_PAFacilityCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_PA['TextBox_PropTreatmentDate']}     ${propTreatmentDate}        

Click PA Claim Header Save button
    Scroll Down
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Button_SavePAInfo']}

Select PA Claim Line Service
    [Arguments]    ${service}
    SEL.Select From List By Value               ${PAGE_CLAIMSUMMARY_PACLAIMLINE['DropDown_Service']}     ${service}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Search & Select PA Claim Line Provider
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PACLAIMLINE['SearchIcon_Provider']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_FACILITY['Link_PAFacilityCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}    

Search & Select PA Claim Line Facility
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PACLAIMLINE['SearchIcon_Facility']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_FACILITY['Link_PAFacilityCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']} 

Save PA Claim Line
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PACLAIMLINE['SaveIcon_ClaimLine']}    

Adjudicate PA Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Button_Adjudicate']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Approve PA Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Button_Approve']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Authorize PA Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Button_Authorize']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Convert to Claim
    SEL.Wait Until Element Is Visible           ${PAGE_CLAIMSUMMARY_PA['Link_ConvertToClaim']}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_PA['Link_ConvertToClaim']}

Provide Header information of converted claim
    Scroll Down
    [Arguments]    ${actualDiagnosis}    ${actualProcedurer}    ${dischargeDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextArea_Diagnosis']}         ${actualDiagnosis}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextArea_Procedure']}         ${actualProcedurer}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_DischargeDate']}      ${dischargeDate}

#OP CLAIM
Provide Primary Care Claim Header information
    [Arguments]    ${totAmtIncurred}    ${conditionCode}    ${treatmentCode}    ${claimNotes}    
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_OP['TextBox_TotAmtIncurred']}     ${totAmtIncurred}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY['TextBox_Condition']}             ${conditionCode}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY['Link_AddCondition']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY['TextBox_Treatment']}             ${treatmentCode}   
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY['Link_AddTreatment']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_OP['TextArea_ClaimNotes']}        ${claimNotes}

Click OP Claim Header Save button
    Scroll Down
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_OP['Button_SaveOPInfo']}    

Provide Claim Line Treatment Date
    [Arguments]    ${treatmentDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_CLAIMLINE['TextBox_TreatmentDate']}   ${treatmentDate}

Adjudicate OP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_OP['Button_Adjudicate']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Approve OP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_OP['Button_Approve']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Authorize OP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_OP['Button_Authorize']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

#IP CLAIM
Provide Hospital Claim Header information
    [Arguments]    ${totAmtIncurred}    ${conditionCode}    ${treatmentCode}    ${actualDiagnosis}    ${actualProcedurer}    ${admissionDate}    ${treatmentDate}    ${dischargeDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_TotAmtIncurred']}     ${totAmtIncurred}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY['TextBox_Condition']}             ${conditionCode}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY['Link_AddCondition']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY['TextBox_Treatment']}             ${treatmentCode}    
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY['Link_AddTreatment']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextArea_Diagnosis']}         ${actualDiagnosis}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextArea_Procedure']}         ${actualProcedurer}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_IP['SearchIcon_ProvFac']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}
    SEL.Click Element                           ${PAGE_FACILITY['Link_FacilityCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}   
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_AdmissionDate']}      ${admissionDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_TreatmentDate']}      ${treatmentDate}
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_IP['TextBox_DischargeDate']}      ${dischargeDate}

Click IP Claim Header Save button
    Set Selenium Speed                           0.2s
    Scroll Down
    Wait Until Element Is Visible               ${PAGE_CLAIMSUMMARY_IP['Button_SaveIPInfo']}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_IP['Button_SaveIPInfo']}
    Set Selenium Speed                           0    

Select Claim Line Service
    [Arguments]    ${service}
    SEL.Select From List By Value               ${PAGE_CLAIMSUMMARY_CLAIMLINE['DropDown_Service']}     ${service}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Search Claim Line Payee
    Set Selenium Speed                           0.2s
    Scroll Down
    Wait Until Element Is Visible               ${PAGE_CLAIMSUMMARY_CLAIMLINE['SearchIcon_Payee']}
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_CLAIMLINE['SearchIcon_Payee']}
    Set Selenium Speed                           0  

Input Claim Line Claim Amount
    [Arguments]    ${claimAmt}
    SEL.Wait Until Page Contains Element        ${PAGE_CLAIMSUMMARY_CLAIMLINE['TextBox_ClaimAmount']}   60s
    SEL.Input Text                              ${PAGE_CLAIMSUMMARY_CLAIMLINE['TextBox_ClaimAmount']}   ${claimAmt}

Save Claim Line
    Scroll Down
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_CLAIMLINE['SaveIcon_ClaimLine']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Edit Claim Line
    Scroll Down
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_CLAIMLINE['EditIcon_ClaimLine']}

Select Facility Payee
    SEL.Click Element                           ${PAGE_FACILITY['Link_PAFacilityCode']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']} 
    SEL.Click Element                           ${PAGE_FACILITY_PAYEE['Link_PayableTo']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']} 

Adjudicate IP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_IP['Button_Adjudicate']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Approve IP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_IP['Button_Approve']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}

Authorize IP Claim
    SEL.Click Element                           ${PAGE_CLAIMSUMMARY_IP['Button_Authorize']}
    SEL.Wait Until Element Is Not Visible       ${GENERIC_COMPONENTS['Image_Loading']}