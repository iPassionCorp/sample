*** Settings ***
Documentation  SFF Automate Testing Framework
Library  Selenium2Library


*** Variables ***


*** Test Cases ***
Test Case1
    [Documentation]  Say somethings
    [Tags]  Smoke
    open browser  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf  chrome
    input text  //input[@id="frm:username"]  porntipp
    sleep  3 s
    input password  //input[@id="frm:password"]  0917#Lek
    sleep  3 s
    click button  //*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input
    sleep  3 s
    mouse over  //*[@id="ddtopmenubar"]/ul/li[3]/a/div
    sleep  3 s
    click element  //*[@id="ddsubmenu3"]/li[3]/a
    sleep  3 s
    click image  Logout !!
    sleep  3 s
    close browser