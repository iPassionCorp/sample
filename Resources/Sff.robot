*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/SignOut.robot
Resource  PO/OrderHistoryPage.robot
Resource  PO/SignIn.robot


*** Keywords ***
Valid Login
    LandingPage.load
    LandingPage.Verify Page Loaded
    SignIn.Valid SignIn

Search Order History
    OrderHistoryPage.To Search Order History Page

SigningOut
    SignOut.SignOut
    #close browser
