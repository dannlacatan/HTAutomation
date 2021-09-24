#KEYWORD_LOGIN.robot

*** Keywords ***
Perform Login
    [Arguments]    ${userName}    ${password}
    SEL.Wait Until Page Contains Element        ${PAGE_LOGIN['TextBox_UserName']}
    SEL.Input Text                              ${PAGE_LOGIN['TextBox_UserName']}                       ${userName}
    SEL.Input Text                              ${PAGE_LOGIN['TextBox_Password']}                       ${password}
    SEL.Press Keys                              ${PAGE_LOGIN['Button_Logon']}                           ENTER