*** Settings ***
Documentation    Setup and Tear Down Examples
Test Setup       Log    Default test Setup
Test Teardown    Log    Default test Teardown

*** Variables ***
${SETUP}        No Operation
${TEARDOWN}     No Operation

*** Test Cases ***
Default values
    [Documentation]    Setup and teardown from setting table
    No Operation

Overridden setup
    [Documentation]    Own setup, teardown from setting table
    [Setup]    Log    Owerwritten Setup
    No Operation
    [Teardown]  Log   Owerwritten Teardown

No teardown
    [Documentation]    Default setup, no teardown at all
    No Operation
    [Teardown]

No teardown 2
    [Documentation]    Setup and teardown can be disabled also with special value NONE
    No Operation
    [Teardown]    NONE

Using variables
    [Documentation]    Setup and teardown specified using variables
    [Setup]    ${SETUP}
    No Operation
    [Teardown]    ${TEARDOWN}