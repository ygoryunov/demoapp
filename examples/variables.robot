*** Settings ***
Documentation    Variables using

*** Variables ***
${STRING VARIABLE}      123
${INTEGER VARIABLE}     ${123}
${FLOAT VARIABLE}       ${1.23}
${STRING WITH SPACES}   1 \ \ \ 2 \ \ \ 3
${BINARRY VARIABLE}     ${0b1011}
${OCTAL VARIABLE}       ${0o10}
${HEX VARIABLE}         ${0xff}
${BOOLEAN VARIABLE}     ${true}
${NONE VARIABLE}        ${None}
${EMPTY VARIABLE}       ${EMPTY}
${KEYWORD}              Return me calculation
@{LIST}                 List    Variable
&{DICTIONARY}           name=John   lastname=Smith

*** Test Cases ***
One Space
    Should Be Equal    ${SPACE}          \ \

Four Spaces
    Should Be Equal    ${SPACE * 4}      \ \ \ \ \

Ten Spaces
    Should Be Equal    ${SPACE * 10}     \ \ \ \ \ \ \ \ \ \ \

Quoted Space
    Should Be Equal    "${SPACE}"        " "

Quoted Spaces
    Should Be Equal    "${SPACE * 2}"    " \ "

Empty
    Should Be Equal    ${EMPTY}          \

Keywords can return calculated value
    ${ret} =   Return me calculation
    Log  ${ret}

And can execute keywords stored in variables
    ${ret} =   Run Keyword  ${KEYWORD}
    Log  ${ret}

Operate with lists
    Log Many    @{LIST}
    log         Or access to the element by index
    Log         @{LIST}[0]

Using dictionary values
    Log         ${DICTIONARY['name']}
    Log         ${DICTIONARY['lastname']}

*** Keywords ***
Return me calculation
    ${var} =    Evaluate    ${INTEGER VARIABLE} + ${FLOAT VARIABLE}
    [Return]    ${var}