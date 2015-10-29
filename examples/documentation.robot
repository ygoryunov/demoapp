*** Settings ***
Documentation    Suite documentation
Metadata    Version         1.0
Metadata    Issue link      http://google.com
Metadata    Executed at     %{COMPUTERNAME}

*** Variables ***
${HOST}     localhost
${USER}     username

*** Test Cases ***
Simple
    [Documentation]    Simple documentation
    No Operation

Formatting
    [Documentation]    *This is bold*, _this is italic_  and here is a link: http://robotframework.org
    No Operation

Variables
    [Documentation]    Executed at ${HOST} by ${USER}
    No Operation

Many lines
    [Documentation]    Here we have
    ...
    ...                newline
    No Operation