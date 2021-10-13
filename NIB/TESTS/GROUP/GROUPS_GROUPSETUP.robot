***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

***Test Cases***
End to End Regression
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               ${LOGIN['VALID']['USERNAME']}        
    ...                                         ${LOGIN['VALID']['PASSWORD']}          

    #CREATE GROUP
    Navigate to Group Setup
    Click Group Setup New Button
    Provide Group details                       ${ADDGROUP['VALID']['GRPNAME']}    
    ...                                         ${ADDGROUP['VALID']['GRPSTARTDATE']}    
    ...                                         ${ADDGROUP['VALID']['GRPTYPE']}        
    ...                                         ${ADDGROUP['VALID']['GRPBRANCH']}    
    ...                                         ${ADDGROUP['VALID']['GRPFREQUENCY']}
    Save Group details
    
    #GROUPDETAILS ASSERTIONS
    Validate display message                    ${SPIELS_PAGE_ADDGRP['VALID']['SUCCESS_SAVED_MESSAGE']}

    #GROUPCONTACTS
    Navigate to Group Contacts tab
    Provide Group Contacts information          50    LastName    FirstName    dann.lacatan@haelthtech.com
    Save Group Contacts information

    #GROUPCONTACTS ASSERTIONS
    Validate display message                    Contact saved successfully                                                          

    #GROUPADDRESS
    Navigate to Group Address tab
    Provide Group Address information           grp_addressLine1      1032    City    12345
    Save Group Address information

    #GROUPADDRESS 
    Validate display message                    Group Street Address saved
   
    #GROUPADVISOR
    # Navigate to Group Advisor tab
    # Select Group Advisor
    # Save Group Advisor

    #GROUPPLAN
    Navigate to Group Plan tab
    Click Group Plan New Button
    Provide Group Plan details                  FAMILY PLAN    EF    09/09/2021    PAYROLL    AGED        
    Save Group Plan details

    #GPPT ASSERTIONS
    Validate display message                    Group plan saved

    #GPPTBILLING PT1
    Navigate to Group Plan Billing Details
    Add Group Plan Billing Account
    Save Group Plan Billing Account

    #ADDBILLING ASSERTION
    Validate display message                    Billing Details saved

    #GPPTBILLING PT2
    Save Group Plan Billing Details

    #GPPTBILLING ASSERTION
    Validate display message                    Billing Details saved
    
    #GPPTPO
    Navigate to Group Plan Product Option
    Click New Group Plan Product Option

    #LOOP BASED ON DATA COUNT
    Provide Group Plan Product Option information    EMPPARTNERFAM    EF    1081    1    FULL    UW Ngati Whatua Orakei Health Insurance nil xs                            
    Save Group Plan Product Option information

    #GPPTPO ASSERTION #LOOP BASED ON DATA COUNT
    Validate display message                    Saved Product Option

    #GPPTADVISOR
    Navigate to Group Plan Advisor
    Select Group Plan Advisor
    Save Group Plan Advisor

    #GPPTADVISOR ASSERTION
    Validate display message                    Group Plan Advisor successfully saved

    #GPPTINFORCE
    Navigate to Group Plan details
    Set Group Plan to INFORCE

    #GPPTINFORCE ASSERTION
    Validate display message                    Group plan saved
    
    #GROUPINFOCE
    Cancel from Group Plan details
    Navigate to Group details
    Click Change Status button
    Set Group Status to INFORCE

    #GROUPINFOCE ASSERTION
    Validate display message                    Groups saved