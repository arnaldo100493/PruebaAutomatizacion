*** Settings ***
Library           SeleniumLibrary
Library           Selenium2Library
Library           ExcelLibrary

*** Test Cases ***
Hola
    Selenium2Library.Open Browser    https://www.google.com.co    chrome
    Selenium2Library.Input Text    //input[@name="q"]    Selenium
    Selenium2Library.Press Key    //input[@name="q"]    \\13
