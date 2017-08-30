*** Settings ***
Documentation  SFF Automate Testing Framework
Library  Selenium2Library


*** Variables ***


*** Test Cases ***
Test Case1
    [Documentation]  Say somethings
    [Tags]  Smoke
    open browser  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf  chrome
    sleep  3 s
    close browser
