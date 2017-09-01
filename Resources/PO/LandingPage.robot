*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    go to  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf

Verify Page Loaded
    wait until page contains  Username: