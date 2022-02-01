#JV ONS ONV
*** Setting ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}  headlessFirefox
${SiteUrl}  https://admin-demo.nopcommerce.com/
${user}  admin@yourstore.com
${pwd}  admin

*** Test Cases ***
Login Test
    Open my Browser  ${SiteUrl}  ${Browser}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    Verify Successful Login
    close my browser
# robot LoginTest.robot