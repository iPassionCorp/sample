*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/SignIn.robot
Resource  PO/SignOut.robot
Resource  PO/OrderHistoryPage.robot


*** Keywords ***
Valid Login
    LandingPage.load
    LandingPage.Verify Page Loaded
    Login.Valid SignIn

Search Order History
    OrderHistoryPage.To Search Order History Page

SigningOut
    SignOut.SignOut
    #close browser
