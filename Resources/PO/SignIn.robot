*** Settings ***
Library  Selenium2Library

*** Keywords ***
Valid SignIn
    Enter Username
    Enter Password
    Submit Button

Invalid SignIn
    Enter Username
    Enter Password
    Submit Button

Enter Username
    input text  xpath=//input[@id="frm:username"]  porntipp

Enter Password
    input password  xpath=//input[@id="frm:password"]  0917#Lek

Submit Button
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input


