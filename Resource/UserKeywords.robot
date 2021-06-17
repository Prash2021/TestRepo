*** Settings ***
Library  ../Testdata/ReadData.py

*** Keywords ***
Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxr}=  fetch_no_of_rows  ${sheetname}
    [return]  ${maxr}

Read Excel Data of Cell
    [arguments]  ${sheetname}  ${row}  ${cell}
    ${celldata}=  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [return]  ${celldata}