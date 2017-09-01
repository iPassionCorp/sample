*** Settings ***
Documentation  SFF Automate Testing Framework
Library  Selenium2Library
resource  ../../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Test Case1
    [Documentation]  Say somethings
    [Tags]  Smoke

    #Invalid Login  (Common)
    sleep  5s
    input text  xpath=//input[@id="frm:username"]  porntipp
    input password  xpath=//input[@id="frm:password"]  0917#Lek
    click button  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input

    #Search Order History
    mouse over  xpath=//*[@id="ddtopmenubar"]/ul/li[3]/a/div
    click element  xpath=//*[@id="ddsubmenu3"]/li[3]/a
    click image  Logout !!
    #close browser


    #Execute by command
    #robot -d results tests/sff.robot
    #option for specific tags --include tagName or -i tagName
    #-d path -> specific result path log.html, output.html, report.html
    #Option for specific browser -> -v BROWSER:ie like.. pybot -v BROWSER:ie tests/sff.robot
    #-v REMOTE_URL:URL for execute remote url for run scripts
    #-N "Report Name/Logs name/Test Suite's name"
    #-t "Test Case name"  -t "Test Case name2" .. -t "" ..more test case -> for specific Test Case that want to run