*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}   http://www.thetestingworld.com/testing
${Browser}  Chrome


*** Keywords ***
Start Browser and Maximize
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window

Fetch Data Title
    ${page_title}=  Get Title
    Log  ${page_title}

Fetch Data current url
    ${page_loc}=  Get location
    Log  ${page_loc}

Close browser window
    Close Browser

