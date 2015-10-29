*** Settings ***
Documentation    Error handling examples

*** Variables ***
${NUM}  123

*** Test Cases ***
Normal Error
    Fail    This is a rather boring example...

HTML Error
    Should Be Equal    ${NUM}    42    *HTML* Number is not my <b>MAGIC</b> number.