*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    go to  ${URL}

Verify Page Loaded
    wait until page contains  Username: