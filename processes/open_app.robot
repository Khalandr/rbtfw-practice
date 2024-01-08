*** Settings ***
Library    FlaUILibrary

*** Variables ***
${CALCULATOR_APP}    C:\\Windows\\System32\\calc.exe
${ZERO}    /Window/Window[2]/Custom/Group/Group[5]/Button[1]
${ONE}    /Window/Window[2]/Custom/Group/Group[5]/Button[2]
${TWO}    /Window/Window[2]/Custom/Group/Group[5]/Button[3]
${THREE}    /Window/Window[2]/Custom/Group/Group[5]/Button[4]
${FOUR}    /Window/Window[2]/Custom/Group/Group[5]/Button[5]
${FIVE}    /Window/Window[2]/Custom/Group/Group[5]/Button[6]
${SIX}    /Window/Window[2]/Custom/Group/Group[5]/Button[7]
${SEVEN}    /Window/Window[2]/Custom/Group/Group[5]/Button[8]
${EIGHT}    /Window/Window[2]/Custom/Group/Group[5]/Button[9]
${NINE}    /Window/Window[2]/Custom/Group/Group[5]/Button[10]
${PLUS}    /Window/Window[2]/Custom/Group/Group[4]/Button[4]
${MINUS}    /Window/Window[2]/Custom/Group/Group[4]/Button[3]
${MULTIPLY}    /Window/Window[2]/Custom/Group/Group[4]/Button[2]
${DIVIDE}    /Window/Window[2]/Custom/Group/Group[4]/Button[1]
${EQUAL}    /Window/Window[2]/Custom/Group/Group[4]/Button[5]
${ANSWER_LOCATOR}    /Window[10]/Window[2]/Custom/Group/Text[2]



*** Test Cases ***
Open Calculator
    Launch Application    ${CALCULATOR_APP}

Attach Application
    Attach Application By Name    ${CALCULATOR_APP}

Perform Sum
    Click    ${ONE}
    Click    ${PLUS}
    Click    ${ONE}
    Click    ${EQUAL}
    ${ANSWER}    Get Property From Element    ${ANSWER_LOCATOR}    Name
    Log    Captured Text: ${ANSWER}
    




