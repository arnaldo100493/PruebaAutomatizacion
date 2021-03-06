*** Settings ***
Library     SeleniumLibrary
Library     Selenium2Library
Library     ExcelLibrary
Resource  ../Resources/login_resources.robot
Library   DataDriver  ../TestData/LoginData.xlsx     sheet_name=Hoja1

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExcel  using  ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]     ${username}             ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login button
    Error message should be visible