***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Receipt Entry creation
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to Receipt Entry
    Navigate to Receipts>Receipt Entry
    
    #NEW RECEIPT ENTRY
    Click Receipt Entry New Button

    #PROVIDE ENTRY DETAILS
    Provide Billing Submission details    10    group    DC    100    End to End regression
    Save Receipt Entry information

    #RECEIPT ENTRY ASSERTION
    Validate display message                                                                         Receipt saved
    
    #POLICY APPLICATION
    Navigate to Membership Application
    Select Preliminary Match All    
    Save Membership Application
    
    #POLICY APPLICATION ASSERTION
    Validate display message                                                                        Membership Application saved