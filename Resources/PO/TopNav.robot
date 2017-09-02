*** Settings ***
Resource  ./SubPO/OrderHistoryPage.robot

*** Variables ***
${HOME_LINK} =
${ACCOUNT_LINK} =
${ORDER_MANAGEMENT_LINK} =  xpath=//*[@id="ddtopmenubar"]/ul/li[3]/a/div
${TRANSACTION_MANAGEMENT_LINK} =
${INVENTORY_MANAGEMENT_LINK} =
${MONITORING_LINK} =
${CONFIGURATION_LINK} =
${RISK_MANAGEMENT_LINK} =

*** Keywords ***
Select Order History Page