*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Order Type List
    [Arguments]  ${OrderType}
    Wait Until Page Contains Element  ${LIST_ORDER_TYPE}
    select from list  ${LIST_ORDER_TYPE}  ${OrderType}

Select Cancel Order Reason
    [Arguments]  ${Cancel_Reason}
    sleep  3s
    Wait Until Page Contains Element  ${LIST_CANCEL_ORDER_REASON}
    select from list  ${LIST_CANCEL_ORDER_REASON}  ${Cancel_Reason} 

Click Go Button
    Sleep  3s
    Wait Until Page Contains Element  ${BTN_ORDER_GO_BUTTON}
    log  ${BTN_ORDER_GO_BUTTON}
    Click Image  ${BTN_ORDER_GO_BUTTON}

Click Cancel Button
    #Click Button  ${BTN_CANCEL_BUTTON}
    sleep  3s
    wait until page contains element  ${BTN_CANCEL_BUTTON}
    #log  ${BTN_CANCEL_BUTTON}
    Click Button  ${BTN_CANCEL_BUTTON}
    ${ORDER_NO} =  Get Text  ${INPUT_SHOW_ORDER_NO}
    #log  ${ORDER_NO}
    sleep  3s
    wait until page contains element  //*[@id="formHeaderOrder"]/ul/li
    ${MessageReturn} =  Get Text  //*[@id="formHeaderOrder"]/ul/li
    #log  ${MessageReturn}
    Wait Until Page Contains  ${MessageReturn}


