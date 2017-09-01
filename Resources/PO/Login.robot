*** Settings ***
Library  Selenium2Library

*** Keywords ***
Invalid Login
    [Documentation]  Invalid Login
    log  Invalid Login
    input text  xpath=//input[@id="frm:username"]  xxxx
    input password  xpath=//input[@id="frm:password"]  xxxx
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input

Valid Login
    [Documentation]  Valid Login
    log  Valid Login
    input text  xpath=//input[@id="frm:username"]  porntipp
    input password  xpath=//input[@id="frm:password"]  0917#Lek
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input