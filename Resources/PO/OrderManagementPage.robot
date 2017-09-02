*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Order Type List
    [Arguments]  ${OrderType}
    select from list  //*[@id="frmOrderType:idSelectOneOrderType"]  ${OrderType}

Cancel Order
    [Arguments]  ${Cancel_Reason}
    select from list  ${Cancel_Reason} 


