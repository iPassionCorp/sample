*** Settings ***
Library  Selenium2Library
Resource  ../../Config/Main_config.robot

*** Keywords ***
Go To Asset Account Page
    AssetAccountPage.Mouse Over Menu Order Management
    AssetAccountPage.Verify Page Link
    AssetAccountPage.Click Order History Link

Mouse Over Menu Order Management
    mouse over  ${ORDER_MANAGEMENT_LINK}

Verify Page Link
    #element text should be  ${ORDER_HISTORY_LINK}  Search Order / Transaction History
    ${getElementText} =  get text  ${ASSET_ACCOUNT_LINK}
    should be equal as strings  ${getElementText}  Account Asset Information  ignore_case=true

Click Order History Link
    click element  ${ASSET_ACCOUNT_LINK}

Enter Account NO
    [Arguments]  ${AccountNo}
    input text  ${INPUT_ASSET_ACC_ACCOUNT_NO}  ${AccountNo}

Click Search Account
    click button  ${SEARCH_ACCOUNT_BUTTON}

Select First Account List
    click link  ${FIRST_ACCOUNT_LIST}

Select Order Type List
    [Arguments]  ${OrderType}
    select from list  //*[@id="frmOrderType:idSelectOneOrderType"]  ${OrderType}

Click Go Button
    click button  ${BTN_ORDER_GO_BUTTON}