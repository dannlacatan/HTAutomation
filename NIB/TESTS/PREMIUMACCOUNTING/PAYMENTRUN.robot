***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Claims Payment Run
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                              dann        salus123   
    
    #Navigate to Payment Run
    Navigate to Payment Run

    #Create new claims payment run
    Click Payment Run New Button

    #Provide Payment Run information
    Provide Payment Run information           CLAIM    10    100
    
    #Process Payment Run
    Process Payment Run
    
    Navigate to Home