*** Settings ***
Documentation           Test Suite for Login Cases          #This for writing description for your test suite
Library     JSONLibrary
Resource    ../Keywords/Webdriver_Manager.robot
Resource    ../Keywords/Keywords_Login.robot
Test Setup          Open Chrome Browser         #This is used to be executed before Test Steps executed for each Test Cases in Test Suite
Test Teardown       Close Browser               #This is used to be executed once at the end of suite execution


*** Test Cases ***

Test Case SignIn with Valid Credentials
    [Tags]      Positive, Login-Functionality, Smoke-Test
    Open Sign In Page
    # Get data from json file
    ${file}     Load Json From File    ${CURDIR}${/}resources${/}login.json
    ${candidate_Email}   Get Value From Json    ${file}    $.userName
    ${candidate_Pass}   Get Value From Json    ${file}    $.password
    ${candidate_OTP}   Get Value From Json    ${file}    $.otp
    User SignIn    ${candidate_Email[0]}    ${candidate_Pass[0]}    ${candidate_OTP[0]}

*** Test Cases ***
Test Case SignIn with Valid Credentials2
    Open Sign In Page
    # Get data from json file
    ${file}     Load Json From File    ${CURDIR}${/}resources${/}login.json
    ${candidate_Email}   Get Value From Json    ${file}    $.userName
    ${candidate_Pass}   Get Value From Json    ${file}    $.password
    ${candidate_OTP}   Get Value From Json    ${file}    $.otp
    User SignIn    ${candidate_Email[0]}    ${candidate_Pass[0]}    ${candidate_OTP[0]}