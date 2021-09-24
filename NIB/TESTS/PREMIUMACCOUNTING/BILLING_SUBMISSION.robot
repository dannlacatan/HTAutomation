***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Billing Submission
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to Billing Submission
    Navigate to Billing>Submission

    #NEW BILLING SUBMISSION
    Click Billing Submission New Button
    Provide Billing Submission details

    Perform Preliminary Billing
    Complete Billing Submission
    
    Sleep   2s