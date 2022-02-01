#JV ONS ONV
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid login

*** Test Cases ***
#Username Password
Right user empty pass  admin@yourstore.com  ${EMPTY}
Right user wrong pass  admin@yourstore.com  ABC
Wrong user right pass  admin@youore.com  admin
Wrong user empty pass  admin@yourstore  ${EMPTY}
Wrong user wrong pass  adin@yourore.com  ABC123

*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    input username  ${username}
    input pwd  ${password}
    click login button
    Error message should be visible
