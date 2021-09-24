***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Prior Approval creation
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to PA Claims
    Navigate to Claims>Prior Approval Claims
    
    #Create PA Claims
    Click Claims New Button
    Provide Policy information                  1
    
    #Provide PA claim details
    Provide Prior Approval Claim Header information   25000    D52    XIX    22/09/2021
    Click PA Claim Header Save button
    
    #PA claim header assertion
    Validate display message                    Prior Approval saved

    #Claim line
    Select PA Claim Line Service                1883
    Search & Select PA Claim Line Provider
    Search & Select PA Claim Line Facility

    #Claim line continuation
    Input Claim Line Claim Amount               25000
    Save PA Claim Line
    
    #Claim line creation assertion
    Validate display message                    Prior Approval Line saved

    #Process claim
    Adjudicate PA Claim

    #Assertion adjudicate
    Validate display message                    The Prior Approval has been adjudicated     

    Approve PA Claim

    #Assertion approved
    Validate display message                    Prior Approval saved

    Authorize PA Claim

    #Assertion approved
    Validate display message                    Prior Approval saved

    #Convert Claim
    Convert to Claim

    Provide Header information of converted claim    test diagnose convert    test procedure convert    22/09/2021       

    Click IP Claim Header Save button

    #Assertion save convert header claim
    Validate display message                    Claim saved

    #Edit Claim line
    Edit Claim Line

    #Search & select provfac payee
    Search Claim Line Payee
    Select Facility Payee
    
    #Resave claim line
    Save Claim Line

    #Assertion claim line save
    Validate display message                    Claim Line saved

    Adjudicate IP Claim
    Approve IP Claim
    Authorize IP Claim

