*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Order Type List
    [Arguments]  ${OrderType}
    select from list  ${LIST_ORDER_TYPE}  ${OrderType}

Cancel Order
    [Arguments]  ${Cancel_Reason}
    select from list  ${LIST_CANCEL_ORDER_REASON}  ${Cancel_Reason} 

Click Go Button
    Click Image  ${BTN_ORDER_GO_BUTTON}

Click Cancel Button
    Click Image  ${BTN_CANCEL_BUTTON}
    ${ORDER_NO} =  Get Text  ${INPUT_SHOW_ORDER_NO}
    Wait Until Page Contains  Cancel Order Number: ${ORDER_NO} success


