*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resource/Resource1.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close browser window


*** Variables ***

*** Test Cases ***
Robot Second Test Case
    [Documentation]  This test case is used to verify current url of the page
    set selenium implicit wait      2 seconds
    Click Element  xpath://a[text()= 'Login']
    Input Text  name:username  Prashanth
    Press Key  name:password  kumar
    Fetch Data Title
    Fetch Data current url
