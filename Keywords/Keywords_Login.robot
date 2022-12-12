*** Settings ***
Resource    ../POM/Home_Page.robot
Resource    ../POM/Login_Page.robot


*** Keywords ***
Open Sign In Page
    Get Home Page Logo
    Click Login Button in Home Page

User SignIn
    [Arguments]     ${Username}     ${Password}     ${OTP}
    Insert Text in Email    ${Username}
    Insert Text in Password    ${Password}
    Click Continue Button
    Insert Text in OTP    ${OTP}
    Verify User Logged In