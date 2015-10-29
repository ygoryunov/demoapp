*** Settings ***
Documentation    Tags examples
Default Tags    TAG 1    TAG 2
Force Tags      FTag 123

*** Test Cases ***
Use default tags
    No Operation

Owerwrite Tags
    [Tags]  TAG 3
    No Operation