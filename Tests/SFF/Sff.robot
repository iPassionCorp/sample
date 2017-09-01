*** Settings ***
Documentation  SFF Automate Testing Framework
Library  Selenium2Library


*** Variables ***


*** Test Cases ***
Test Case1
    [Documentation]  Say somethings
    [Tags]  Smoke
    open browser  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf  chrome
    input text  xpath=//input[@id="frm:username"]  porntipp
    sleep  3 s
    input password  xpath=//input[@id="frm:password"]  0917#Lek
    sleep  3 s
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input
    sleep  3 s
    mouse over  xpath=//*[@id="ddtopmenubar"]/ul/li[3]/a/div
    sleep  3 s
    click element  xpath=//*[@id="ddsubmenu3"]/li[3]/a
    sleep  3 s
    click image  Logout !!
    sleep  3 s
    close browser

    #Execute by command
    #robot -d results tests/sff.robot
    #option for specific tags --include tagName or -i tagName
    #-d path -> specific result path log.html, output.html, report.html
    #Option for specific browser -> -v BROWSER:ie like.. pybot -v BROWSER:ie tests/sff.robot
    #-v REMOTE_URL:URL for execute remote url for run scripts