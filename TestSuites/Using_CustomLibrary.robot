*** Settings ***
Library     Customlibrary

*** Variables ***
${number1}         10
${number2}         20

*** Test Cases ***
Test 1: Execute some mathematical operations
    [Documentation]    Test Example
    [Tags]    Custom library
    Sum two numbers
    Subtract two numbers
    multiply two numbers

*** Keywords ***
Sum two numbers
    Sum Numbers    ${number1}    ${number2}

Subtract two numbers
    Subtract Numbers    ${number2}    ${number1}

Multiply two numbers
    Multiply Numbers    ${number1}    ${number2}