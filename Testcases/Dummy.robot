# JV ONS ONV
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../Testdata/LoginData.csv
#Library  openpyxl

Suite Setup  Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid login

*** Test Cases ***
#Username Password
LoginTestwithCSV using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    input username  ${username}
    input pwd  ${password}
    click login button
    Error message should be visible
# robot DDT2_CSV.robot