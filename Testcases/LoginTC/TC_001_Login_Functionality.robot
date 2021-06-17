*** Settings ***
Library  SeleniumLibrary
#Resource  ../../Resource/UserKeywords.robot
Resource  C:/Users/Prashanth/PycharmProjects/RobotAutomation/Resource/UserKeywords.robot
Resource  ../../Resource/Resource1.robot

#Test Setup  Start Browser and Maximize
Test Teardown  Close browser window

*** Variables ***

*** Test Cases ***
Robot First Test Case
    [documentation]  This test case to verify enter details
    Start Browser and Maximize
    set selenium implicit wait      2 seconds
    Click Element  xpath://a[text()= 'Login']

    ${row}=   Read Number of Rows   Sheet1

    FOR  ${i}  IN RANGE  1   ${row}+1
       ${username}=  Read Excel Data of Cell  Sheet1  ${i}  1
       ${password}=  Read Excel Data of Cell  Sheet1  ${i}  2
       Input Text  id:username  ${username}
       Input Text  id:password  ${password}
       Click Button  xpath://button[text()= 'Log in']
       sleep  5  seconds
    END
