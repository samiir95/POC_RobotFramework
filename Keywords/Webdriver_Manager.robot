*** Settings ***
Resource    Variables.robot
Library    SeleniumLibrary

*** Keywords ***
Open Chrome Browser
    Set Common Global Variables
    Open Browser                url=${URL}      browser=Firefox
    Maximize Browser Window
    Set Selenium Speed          0.5s    #this is for setting speed of selenium execution, basically the time difference between https requests