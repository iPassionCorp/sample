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
    input text  xpath=//input[@id="frm:username"]  ${SFF_USER}

Enter Password
    input password  xpath=//input[@id="frm:password"]  ${SFF_PASSWORD}

Submit Button
    click button  ${LOGIN_SUBMIT_BUTTON}


