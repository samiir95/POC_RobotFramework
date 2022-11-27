*** Settings ***
Resource    ../Keywords/Keywords_Login.robot
Resource    ../Keywords/Webdriver_Manager.robot
Library             AutoItLibrary
Library    XML
Test Setup          Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
Test case create verification request as a candidate user
    Open Sign In Page
    User SignIn    ghadeer_candidite@inboxbear.com    Ghadeerk@12    000000
    Wait Until Element Is Visible    //div[text()=' Your requests ']
    Click Element    //span[text()= ' START VERIFICATION ' or text() = ' START REQUEST ']
    Wait Until Element Is Visible    //label[text()= 'State']/following-sibling::input
    Clear Element Text    //label[text()= 'State']/following-sibling::input
    Input Text    //label[text()= 'State']/following-sibling::input    Saudi Arabia
    Click Element    //span[text() = ' Review the document ']
    Wait Until Element Is Visible    //label[text()= 'Type your name here']/following-sibling::input
    Scroll Element Into View    //label[text()= 'Type your name here']/following-sibling::input
    Input Text    //label[text()= 'Type your name here']/following-sibling::input    Samir
    Click Element    //span[text()='sign & save']
    Wait Until Element Is Visible    //span[text()= ' Continue ']
    Scroll Element Into View    //span[text()= ' Continue ']
    Click Element    //span[text()= ' Continue ']
    Wait Until Element Is Visible    //label[text()= 'Education institute name']/following-sibling::input
    Input Text    //label[text()= 'Education institute name']/following-sibling::input    Samir
    Input Text    //label[text()= 'College']/following-sibling::input    samirCollege
    Input Text    //label[text()= 'Street']/following-sibling::input    street123
    Input Text    //label[text()= 'Number of the building']/following-sibling::input    4455
    Input Text    //label[text()= 'City']/following-sibling::input    Riyadh
    Input Text    //label[text()= 'State / Province']/following-sibling::input    Saudi Arabia
    Input Text    //label[text()= 'ZIP Code / Post Code']/following-sibling::input    11332
    Input Text    //label[text()= 'Education country']/following-sibling::input[1]    Kingdom Saudi Arabia
    Click Element    //*[@class = 'v-list-item__mask']
    Click Element    //div[@class='maz-input__icon maz-flex right maz-align-center']
    Input Text    //input[@placeholder='Search country']    966
    Press Keys      //input[@placeholder='Search country']  RETURN
    Input Text    //input[@placeholder='Phone Number']    0560288775
    Input Text    //label[text()= 'Web address']/following-sibling::input    https://www.google.com
    Input Text    //label[text()= 'Educational level']/following-sibling::input[1]    Bachelor
    Click Element    //*[@class = 'v-list-item__mask']
    Input Text    //label[text()= 'Major or Field of Study']/following-sibling::input[1]    Programming And Computer Science
    Click Element    //*[@class = 'v-list-item__mask']
    Click Element    //label[text()= 'Start date of enrollment']/following-sibling::input
    Wait Until Element Is Enabled    //*[@class = 'v-btn v-size--default v-date-picker-table__current v-btn--outlined theme--light accent--text']
    Click Element    //*[@class = 'v-btn v-size--default v-date-picker-table__current v-btn--outlined theme--light accent--text']
    Click Element    //label[text()= 'End date of enrollment']/following-sibling::input
    Wait Until Element Is Enabled    //*[@class = 'v-btn v-size--default v-date-picker-table__current v-btn--outlined theme--light accent--text']
    Click Element    //*[@class = 'v-btn v-size--default v-date-picker-table__current v-btn--outlined theme--light accent--text']
    Input Text    //label[text()= 'Name on record']/following-sibling::input    Samiir95
    Click Element    (//p[text()=' Certificates '])[1]/following::button[1]

# Use Autoit library to upload a file
    Control Focus  [CLASS:#32770; TITLE:Open]  ${EMPTY}  [CLASSNN:Edit1]
    Send       ${CURDIR}${/}uploads${/}Certificate.pdf
    Control Click  [CLASS:#32770; TITLE:Open]  ${EMPTY}  &Open

     Sleep    4
     Click Element    //span[text()= ' Continue ']
     Wait Until Element Is Visible    //p[text() = ' Verification ']
     Click Element    //span[text()= ' Continue ']
     Wait Until Element Is Visible    //p[ text()= ' Personal details ']

     # Scroll element into view
     Scroll Element Into View    (//span[@class='rules text-start'])[1]/preceding::div[1]
     Click Element    (//span[@class='rules text-start'])[1]/preceding::div[1]
     Click Element    (//span[@class='rules text-start'])[2]/preceding::div[1]
     Click Element    (//span[@class='rules text-start'])[3]/preceding::div[1]
     Click Element    (//span[@class='rules text-start'])[4]/preceding::div[1]
     Wait Until Element Is Enabled    (//button[@type='submit'])[3]
     Click Element    (//button[@type='submit'])[3]
     Wait Until Element Is Visible    //*[@class = 'wpwl-button wpwl-button-pay']

     # Switch to iframe
     Select Frame    //*[@name='card.number']
     Input Text    //*[@name = 'card.number']    4111111111111111
     Unselect Frame
     Input Text    //*[@class = 'wpwl-control wpwl-control-expiry']    11/23
     Input Text    //*[@name = 'card.holder']    Samir
     Select Frame    //*[@name='card.cvv']
     Input Text    //*[@name = 'card.cvv']    123
     Unselect Frame
     Click Element    //*[@name = 'billing.country']

     # Select from drop down list
     Select From List By Value    //*[@name = 'billing.country']    SA
     Input Text    //*[@name = 'billing.state']    Saudi Arabia
     Input Text    //*[@name = 'billing.city']    Riyadh
     Input Text    //*[@name = 'billing.postcode']    1234
     Input Text    //*[@name = 'billing.street1']    street 24
     Click Element    //*[@class = 'wpwl-button wpwl-button-pay']

     # Execute JavaScript
     Execute JavaScript    window.scrollTo(0,300)
     Select Frame    //*[@class= 'wpwl-target']
     Wait Until Element Is Enabled    //*[@name = 'submit']
     Click Element    //*[@name = 'submit']
     Unselect Frame
     Wait Until Element Is Visible    //*[@class = 'text-h4 mb-4 text-center font-weight-medium']       60s
     Page Should Contain Element    //*[@class = 'text-h4 mb-4 text-center font-weight-medium']






