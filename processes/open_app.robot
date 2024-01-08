*** Settings ***
Library    FlaUILibrary

*** Variables ***
${CALCULATOR_APP}    C:\\Windows\\System32\\calc.exe

*** Test Cases ***
Open Calculator
    Launch Application    ${CALCULATOR_APP}


