*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/Webdriver_Manager.robot

*** Test Cases ***
Test Case SignIn with Valid Credentials
    Open Browser        url=https://spa.qvp.uat.devops.takamol.support/home    browser=Chrome
    Maximize Browser Window
#    Set Selenium Speed    0.5
    Wait Until Element Is Visible             (//*[contains(@href,'/candidate/login')])[1]        10s
    Click Element       (//*[contains(@href,'/candidate/login')])[1]
    Input Text    //input[contains(@type,'email')]    ghadeer_candidite@inboxbear.com
    Input Text    //input[contains(@type,'password')]    Ghadeerk@12
    Click Element    //span[contains(text(),'Continue')]
    Wait Until Element Is Visible    //input[contains(@autofocus,'autofocus')]
    Input Text    //input[contains(@autofocus,'autofocus')]    000000
    Wait Until Element Is Visible    //span[contains(text(),'START VERIFICATION') or contains(text(),'START REQUEST')]
    Page Should Contain Element    //span[contains(text(),'START VERIFICATION') or contains(text(),'START REQUEST')]
    Close Browser
