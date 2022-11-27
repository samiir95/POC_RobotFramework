*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${Email_Txt}                            //input[contains(@type,'email')]
${password_Txt}                         //input[contains(@type,'password')]
${Continue_Btn}                         //span[contains(text(),'Continue')]
${OTP_Txt}                              //input[contains(@autofocus,'autofocus')]
${Explicit_TimeOut}                     60s
${VerificationRequest_Btn}              //span[contains(text(),'START VERIFICATION') or contains(text(),'START REQUEST')]

*** Keywords ***
Insert Text in Email
    [Arguments]             ${UserMail_Value}           #This value will be filled as an argument to Keyword
    Wait Until Element Is Enabled       ${Email_Txt}        ${Explicit_TimeOut}
    Input Text    ${Email_Txt}    ${UserMail_Value}

Insert Text in Password
    [Arguments]             ${Password_Value}
    Wait Until Element Is Enabled       ${password_Txt}        ${Explicit_TimeOut}
    Input Text    ${password_Txt}    ${Password_Value}

Click Continue Button
    wait until element is visible       ${Continue_Btn}              ${Explicit_TimeOut}
    Click Element    ${Continue_Btn}


Insert Text in OTP
    [Arguments]             ${OTP_Value}
    Wait Until Element Is Enabled       ${OTP_Txt}        ${Explicit_TimeOut}
    Input Text    ${OTP_Txt}    ${OTP_Value}

Verify User Logged In
    wait until page contains element            ${VerificationRequest_Btn}    ${Explicit_TimeOut}
