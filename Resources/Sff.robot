*** Settings ***
Resource  ./PO/LandingSignInPage.robot
Resource  ./PO/SignOut.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/AssetAccountPage.robot
Resource  ./PO/OrderHistoryPage.robot


*** Keywords ***
Valid Login
    LandingSignInPage.load
    LandingSignInPage.Verify Page Loaded
    SignIn.Valid SignIn

Go to Order History Page
    TopNav.Go to Order History Page

SigningOut
    SignOut.SignOut
    #close browser

Go to Asset Account Management
    TopNav.Go to Asset Account Page

Specifig Account by Account No
    [Arguments]  ${AccountNo}
    AssetAccountPage.Enter Account No  ${AccountNo}

Click Search Button
    AssetAccountPage.Click Search Account

Select First Account List
    #click link  ${FIRST_ACCOUNT_LIST}
    AssetAccountPage.Select First Account List

Select Order Type List
    [Arguments]  ${OrderType}
    AssetAccountPage.Select Order Type List  ${OrderType}

Click Go Button