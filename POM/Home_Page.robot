*** Settings ***
Library    SeleniumLibrary      # This is for Selenium Library keywords

*** Variables ***

${login_Btn}                        (//*[contains(@href,'/candidate/login')])[1]
${home_Logo}                        (//img[contains(@src,'logo')])[1]
${Explicit_TimeOut}                 60s

*** Keywords ***
Click Login Button in Home Page
        Wait Until Element Is Enabled       ${login_Btn}        ${Explicit_Timeout}      #check if an element is enabled
        Wait Until Element Is Visible       ${login_Btn}        ${Explicit_Timeout}
        Click Element       ${login_Btn}        #Click element

Get Home Page Logo
        Wait Until Page Contains Element    ${home_Logo}        ${Explicit_Timeout}      #Check if Page contains the home logo