*** Settings ***
Library  Selenium2Library

*** Keywords ***
To Search Order History Page
    Mouse Over Menu Order Management
    Click Search Order or Transaction History


Mouse Over Menu Order Management
    mouse over  xpath=//*[@id="ddtopmenubar"]/ul/li[3]/a/div

Click Search Order or Transaction History
    click element  xpath=//*[@id="ddsubmenu3"]/li[3]/a