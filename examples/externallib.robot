*** Settings ***
Documentation    External lybrary example
Library  ExampleLib  test
Library  Selenium2Library

*** Test Cases ***
External library using
    ${res} =   concatenate   test
    Log  ${res}
    ${res} =  Hello  world!
    Log  ${res}

Google test
    Open Browser  http://google.com
    Title Should Start With  Google
    [TearDown]  Close Browser