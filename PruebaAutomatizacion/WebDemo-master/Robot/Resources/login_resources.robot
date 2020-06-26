*** Settings ***
Library           SeleniumLibrary
Library           Selenium2Library
Library           ExcelLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
   open browser       ${LOGIN URL}       ${BROWSER}
   maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to  ${LOGIN URL}
Input username
    [Arguments]    ${username}
    input text  id:Email    ${username}
Input pwd
    [Arguments]  ${password} 
    input text  id:Password     ${password}
click login button
    click element xpath://input[@class='button-1 Login-button']
click logout link
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccesful

Dasboard page should be visible                   
   page should contain   Dasboard
