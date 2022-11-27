*** Settings ***
Documentation           Test Suite for Login Cases          #This for writing description for your test suite
Resource    ../Keywords/Webdriver_Manager.robot
Resource    ../Keywords/Keywords_Login.robot
Test Setup          Open Chrome Browser         #This is used to be executed before Test Steps executed for each Test Cases in Test Suite
Test Teardown       Close Browser               #This is used to be executed once at the end of suite execution

*** Test Cases ***

Test Case SignIn with Valid Credentials
    [Tags]      Positive, Login-Functionality, Smoke-Test
    Open Sign In Page
    User SignIn    ghadeer_candidite@inboxbear.com    Ghadeerk@12    000000