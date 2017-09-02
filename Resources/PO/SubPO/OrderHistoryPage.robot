*** Settings ***
Library  Selenium2Library

*** Keywords ***
To Search Order History Page
    Mouse Over Menu Order Management
    Verify Page Link
    Click Order History Link

Mouse Over Menu Order Management
    mouse over  ${ORDER_MANAGEMENT_LINK}

Verify Page Link
    #element text should be  ${ORDER_HISTORY_LINK}  Search Order / Transaction History
    ${getElementText} =  get text  ${ORDER_HISTORY_LINK}
    should be equal as strings  ${getElementText}  Search Order / Transaction History  ignore_case=true

Click Order History Link
    click element  ${ORDER_HISTORY_LINK}