*** Settings ***
Documentation  SFF Automate Testing Framework
Resource  ../Resources/Sff.robot
Resource  ../Resources/Common.robot
Resource  ../Config/Main_config.robot

#Setup and TearDown
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleansing Testing Data

*** Variables ***


*** Test Cases ***
Test Authenticaion
    [Documentation]  Verify Valid SignIn SFF
    [Tags]  Smoke

    Sff.Valid Login
    Sff.SigningOut

Test Search Order History
    [Documentation]  Verify Display Search Order History Page Correctly
    [Tags]  Smoke

    Sff.Valid Login
    Sff.Search Order History
    Sff.SigningOut



    #Execute by command
    #robot -d results tests/sff.robot
    #option for specific tags --include tagName or -i tagName
    #-d path -> specific result path log.html, output.html, report.html
    #Option for specific browser -> -v BROWSER:ie like.. pybot -v BROWSER:ie tests/sff.robot
    #-v REMOTE_URL:URL for execute remote url for run scripts
    #-N "Report Name/Logs name/Test Suite's name"
    #-t "Test Case name"  -t "Test Case name2" .. -t "" ..more test case -> for specific Test Case that want to run