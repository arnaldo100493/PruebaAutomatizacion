/*** Settings ***
Library    ExcelLibrary

*** Test Cases ***
Get Excel Data

    Open Excel    C:\\Users\\abarrime\\Documents\\NetBeansProjects\\ANTProjects\\PruebaAutomatizacion\\PruebaAutomatizacion\\WebDemo-master\\testdata\\Test.xls
    Log To Console    ${\n}   


    ${userName}=    Read Cell Data By Coordinates    Hoja1    0    1   

    Log To Console    ${\n}

    ${userPass}=    Read Cell Data By Coordinates    Hoja1    1    1

    Log To Console    User Name Is:${userName}

    Log To Console    User Pass is:${userPass}

*** Keywords ***
In order to execute this test, open cmd prompt and run following commands