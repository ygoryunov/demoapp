*** Settings ***
Documentation    Manual Test Suite execution example
Library          Dialogs

*** Test Cases ***
Manual Test Case
    Execute Manual Step  Manual step execution
    ${username}=  Get Selection From User  Select user name  user1  user2  admin
    ${username}=  Get Value From User  Input user name  default
    ${password}=  Get Value From User  Input password  hidden=yes
    Pause Execution