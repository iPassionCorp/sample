*** Settings ***
Library  Selenium2Library
Resource  ../../Config/Main_config.robot

*** Keywords ***
Load
    go to  ${URL}

Verify Page Loaded
    wait until page contains  Username: