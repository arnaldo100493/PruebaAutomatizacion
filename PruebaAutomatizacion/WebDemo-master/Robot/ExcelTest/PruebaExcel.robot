*** Settings ***
Library           SeleniumLibrary
Library           Selenium2Library
Library           ExcelLibrary

*** Test Cases ***
AbrirExcel
    Open Excel    filename=C:\\Prueba\\Datos.xlsx    doc_id= documento
    ${userName}=    ExcelLibrary.Read Excel Cell     row_num=1    col_num=1
    Log To Console    ${\n}
    Log To Console    "Listo"
    Log To Console    User Name is:${userName}
