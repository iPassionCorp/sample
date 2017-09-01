*** Settings ***
Library  Selenium2Library

*** keywords ***
Begin Web Test
    open browser  about:blank  chrome
    go to  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf


End Web Test
    close browser