*** Settings ***

*** Keywords ***

Start Testcase
    Open Browser  https://www.eBay.com  chrome
    Maximize Browser Window

Finish Testcase
    Close Browser