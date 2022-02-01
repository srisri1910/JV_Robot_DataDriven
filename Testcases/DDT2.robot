#JV ONS ONV
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot

Library  DataDriver  ../Testdata/LoginData.xlsx  sheet_name=Sheet1
Library  openpyxl
Suite Setup  Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid login

*** Test Cases ***
#Username Password
LoginTestwithExcel using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    input username  ${username}
    input pwd  ${password}
    click login button
    Error message should be visible
