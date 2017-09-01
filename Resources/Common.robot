*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Begin Web Test
    open browser  about:blank  chrome
    #maximize browser window d

End Web Test
    close browser