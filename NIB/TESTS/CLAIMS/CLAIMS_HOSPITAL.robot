***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Hospital Claims creation
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to Hospital Claims
    Navigate to Claims>Hospital Claims
    
    #Create Hospital Claims
    Click Claims New Button
    Provide Policy information                  1
    
    #Provide IP claim details
    Provide Hospital Claim Header information   25000    D52    XIX    Test Actual Diagnosis    Test Actual Procedure    09/09/2021    09/09/2021    09/09/2021
    Click IP Claim Header Save button
    
    #IP claim header assertion
    Validate display message                                                                         Claim saved

    #Claim line
    Select Claim Line Service                   HOSPBEDFEE
    Search Claim Line Payee
    
    #Creation of payee
    Add Member Payee                            Line 1    1032    City    12345

    #payee assertion
    Validate display message                    MemberPayee saved

    #select payee
    Select Member Payee

    #Claim line continuation
    Input Claim Line Claim Amount               25000
    Save Claim Line
    
    #Claim line creation assertion
    Validate display message                    Claim Line saved

    #Process claim
    Adjudicate IP Claim

    #Assertion adjudicate
    Validate display message                    The Claim Line has been adjudicated     

    Approve IP Claim

    #Assertion approved
    Validate display message                    Claim Settlement Report has been submitted

    Authorize IP Claim

    #Assertion approved
    Validate display message                    Claim saved