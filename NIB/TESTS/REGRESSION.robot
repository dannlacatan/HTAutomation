***Settings***
Resource         ${EXECDIR}${/}RESOURCE${/}COMMON.robot

Suite Teardown   SEL.Close All Browsers

***Test Cases***
End to End Regression
    #ACCESSPAGE
    SEL.Open Browser                            ${SUT_BASE_URL}                   ${BROWSER}
    SEL.Maximize Browser Window

    #LOGIN
    Perform Login                               dann        salus123          
 
    #CREATE GROUP
    Navigate to Group Setup
    Click Group Setup New  Button
    Provide Group details                       NWO TEST GROUP58    09/09/2021    GROUP    1000    ANNUAL
    Save Group details
    
    #GROUPDETAILS ASSERTIONS
    Validate display message                    Groups saved

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
    Provide Member information                  PI    Soulx    01/09/1992    M    true
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
    Validate display message                    has been saved successfully

    #Navigate to Billing Submission
    Navigate to Billing>Submission

    #NEW BILLING SUBMISSION
    Click Billing Submission New Button
    Provide Billing Submission information

    Perform Preliminary Billing
    Complete Billing Submission

    #Navigate to Receipt Entry
    Navigate to Receipts>Receipt Entry
    
    #NEW RECEIPT ENTRY
    Click Receipt Entry New Button

    #PROVIDE ENTRY DETAILS
    Provide Receipt Entry information          10    group    DC    100    End to End regression
    Save Receipt Entry information

    #RECEIPT ENTRY ASSERTION
    Validate display message                    Receipt saved
    
    #POLICY APPLICATION
    Navigate to Membership Application
    Select Preliminary Match All    
    Save Membership Application
    
    #POLICY APPLICATION ASSERTION
    Validate display message                    Membership Application saved

    #Navigate to Hospital Claims
    Navigate to Claims>Hospital Claims
    
    #Create Hospital Claims
    Click Claims New Button
    Provide Policy information                  1
    
    #Provide IP claim details
    Provide Hospital Claim Header information   25000    D52    XIX    Test Actual Diagnosis    Test Actual Procedure    09/09/2021    09/09/2021    09/09/2021
    Click IP Claim Header Save Button
    
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

        #Navigate to PA Claims
    Navigate to Claims>Prior Approval Claims
    
    #Create PA Claims
    Click Claims New Button
    Provide Policy information                  1
    
    #Provide PA claim details
    Provide Prior Approval Claim Header information   25000    D52    XIX    23/09/2021
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

    Provide Header information of converted claim    test diagnose convert    test procedure convert    23/09/2021       

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

    #Navigate to Payment Run
    Navigate to Payment Run

    #Create new claims payment run
    Click Payment Run New Button

    #Provide Payment Run information
    Provide Payment Run information             CLAIM    10    100
    
    #Process Payment Run
    Process Payment Run
    
    Navigate to Home