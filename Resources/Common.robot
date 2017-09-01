*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Begin Web Test
    open browser  about:blank  chrome

End Web Test
    close browser