*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}


End Web Test
    close browser

Insert Testing Data
    log  Insert Testing Data..


Cleansing Testing Data
    log  Cleansing Testing Data..