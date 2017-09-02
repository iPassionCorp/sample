*** Settings ***
Library  Selenium2Library

*** Variables ***
${ORDER_HISTORY_LINK} =  xpath=//*[@id="ddsubmenu3"]/li[3]/a

*** Keywords ***
Mouse Over Menu Order Management
    mouse over  ${ORDER_MANAGEMENT_LINK}

Verify Page Link
    element text should be  ${ORDER_HISTORY_LINK}  Search Order / Transaction History

Click Order History Link
    click element  ${ORDER_HISTORY_LINK}