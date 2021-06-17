*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resource/Resource1.robot
Documentation  This test case is used to verify page Title

*** Variables ***

*** Test Cases ***
Robot Second Test Case
    [setup]  Start Browser and Maximize
    [teardown]  Close browser window
    set selenium implicit wait      2 seconds
    Click Element  xpath://a[text()= 'Login']
    Input Text  name:username  Prashanth
    Press Key  name:password  kumar
    Fetch Data Title


