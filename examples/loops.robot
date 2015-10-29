*** Settings ***
Documentation    Using loops

*** Variables ***
@{LIST}     One     Two     Three

*** Test Cases ***
Loop in range
    :FOR    ${INDEX}    IN RANGE    1    3
    \   Log  @{LIST}[${INDEX}]
    \   No Operation

Loop elements in list
    :FOR    ${ELEMENT}  IN  @{LIST}
    \   Log  ${ELEMENT}
    \   No Operation

Loop elements in list again
    :FOR    ${ELEMENT}  IN  1  2  3
    \   Log  ${ELEMENT}
    \   No Operation

Loop termination
    :FOR    ${INDEX}  In Range  1  3
    \   Log  ${INDEX}
    \   Run Keyword If  ${INDEX} == 2  Exit For Loop
    \   No Operation

Loop continuation
    :FOR    ${INDEX}  In Range  1  3
    \   Log  ${INDEX}
    \   Continue For Loop If  ${INDEX} < 2
    \   No Operation


Repeat Action
    Repeat Keyword  3  Log  Repeating...