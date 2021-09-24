***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

*** Test Cases ***
Happy path Group Membership Creation
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123   
    
    #Navigate to Membership Group
    Navigate to Membership>Group
    
    #Create membership
    Click Membership New Button
    Provide Membership Group details            1    1    09/09/2021    ANNUAL    
    Save Membership Group details

    #Create member assertion
    Validate display message                    has been saved successfully
    
    #MEMBERSHIP MEMBERS
    Navigate to Membership Members tab

    #ADD MEMBERS #LOOP BASED ON MEMBER COUNT W DIFF REL TYPES
    Click Create New Member
    Provide Member information                  PI    Fnamas    01/09/1992    M    true
    Click Save button

    Provide Membership Member information       PI    APPLICANT    PENDING    
    Click Save icon

    #ADDMEMBER ASSERTION
    Validate display message                    Policy member saved
    
    #MEM PRODUCT OPTION
    Navigate to Membership Product Option tab
    Click Create Member Product button
    #Generate Member Product
    
    #CREATEMEMPRODUCT ASSERTION
    Validate display message                    Member Products Successfully created

    #INFORCE MEM
    Navigate to Membership Details tab
    Click Change Status link
    Set Membership Status to INFORCE

    #CREATEMEMPRODUCT ASSERTION
    Validate display message                   has been saved successfully
    
