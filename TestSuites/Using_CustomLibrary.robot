*** Settings ***
Library    ../Libraries/SamirCalculator.py
Library    ../Libraries/Taka.py       WITH NAME     abc


*** Variables ***
${number1}         10
${number2}         20

*** Test Cases ***
Test 1: Execute some mathematical operations
    [Documentation]    Test Example
    [Tags]    Custom library
    Sum two numbers
    Subtract two numbers
    Multiply two numbers
    Run pytest

*** Keywords ***
Sum two numbers
    Samir Sum Numbers          a=${number1}       b=${number2}

Subtract two numbers
    Samir Subtract Numbers      a=${number2}    b=${number1}

Multiply two numbers
    Samir Multiply Numbers      a=${number1}    b=${number2}

Run pytest
    abc.Test User Login