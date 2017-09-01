*** Settings ***
Library  Selenium2Library


*** Keywords ***
Valid Login
    sleep  5s
    input text  xpath=//input[@id="frm:username"]  porntipp
    input password  xpath=//input[@id="frm:password"]  0917#Lek
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input

Search Order History
    mouse over  xpath=//*[@id="ddtopmenubar"]/ul/li[3]/a/div
    click element  xpath=//*[@id="ddsubmenu3"]/li[3]/a
    click image  Logout !!
    #close browser
