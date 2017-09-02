*** Settings ***
Resource  AssetAccountPage.robot
Resource  OrderHistoryPage.robot

*** Keywords ***
Go to Order History Page
    OrderHistoryPage.Go To Search Order History Page

Go to Asset Account Page
    AssetAccountPage.Go To Asset Account Page