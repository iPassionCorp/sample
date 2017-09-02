*** Settings ***
Resource  ./PO/LandingSignInPage.robot
Resource  ./PO/SignOut.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/TopNav.robot

*** Keywords ***
Valid Login
    LandingSignInPage.load
    LandingSignInPage.Verify Page Loaded
    SignIn.Valid SignIn

Search Order History
    TopNav.Select Order History Page

SigningOut
    SignOut.SignOut
    #close browser
