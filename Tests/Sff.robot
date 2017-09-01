*** Settings ***
Documentation  SFF Automate Testing Framework
Resource  ../../Resources/Sff.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Test Case1
    [Documentation]  Say somethings
    [Tags]  Smoke

    Valid Login
    Search Order History



    #Execute by command
    #robot -d results tests/sff.robot
    #option for specific tags --include tagName or -i tagName
    #-d path -> specific result path log.html, output.html, report.html
    #Option for specific browser -> -v BROWSER:ie like.. pybot -v BROWSER:ie tests/sff.robot
    #-v REMOTE_URL:URL for execute remote url for run scripts
    #-N "Report Name/Logs name/Test Suite's name"
    #-t "Test Case name"  -t "Test Case name2" .. -t "" ..more test case -> for specific Test Case that want to run