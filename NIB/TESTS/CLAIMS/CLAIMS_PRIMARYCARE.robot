***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Primary Care Claims creation
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to Primary Care Claims
    Navigate to Claims>Primary Care Claims
    
    #Create Primary Care Claims
    Click Claims New Button
    Provide Policy information                  1
    
    #Provide OP claim details
    Provide Primary Care Claim Header information   25000    D52    XIX    Test OP Claim Notes
    Click OP Claim Header Save button
    
    #OP claim header assertion
    Validate display message                    Claim saved

    #Claim line
    Provide Claim Line Treatment Date           09/09/2021
    Select Claim Line Service                   GPMINOR
    Input Claim Line Claim Amount               25000
    Save Claim Line
    
    #Claim line creation assertion
    Validate display message                    Claim Line saved

    #Process claim
    Adjudicate OP Claim

    #Assertion adjudicate
    #Validate display message                    The Claim Line has been adjudicated     

    Approve OP Claim

    #Assertion approved
    #Validate display message                    Claim Settlement Report has been submitted

    Authorize OP Claim

    #Assertion approved
    #Validate display message                    Claim saved