*** Settings ***
Library     SeleniumLibrary
Library     Selenium2Library
Library     ExcelLibrary
Resource   ../Resources/login_resources.robot
Suite Setup   Open my Browser
Suite Teardown | Close Browsers
Test Template  Invalid login

*** Test Cases ***             username                                password
Right user empty pass          admin@yourstore.com                  ${EMPTY}
Right user empty pass          admin@yourstore.com                  xyz
Right user empty pass          adm@yourstore.com                  admin
Right user empty pass          adm@yourstore.com                  ${EMPTY}
Right user empty pass          adm@yourstore.com                  xyz


*** Keywords ***
Invalid login
    [Arguments]  ${username}            ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    Error message should be visible