*** Settings ***
Documentation    Template with embeded arguments example
Test Template    The result of ${calculation} should be ${expected}

*** Test Cases ***
Template with embedded arguments
    1 + 1    2
    1 + 2    3

*** Keywords ***
The result of ${calculation} should be ${expected}
    ${result} =    Evaluate    str(${calculation})
    Should Be Equal    ${result}     ${expected}