*** Settings ***

Library  SeleniumLibrary
Resource

*** Variables ***

*** Test Cases ***

This is a sample test case
    [documentation]  eBay test
    [tags]  regression

    Start Testcase
    Verify Search Results
    Finish Testcase

*** Keywords ***

Start Testcase
    Open Browser  https://www.eBay.com  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Click Button  //*[@id="gh-btn"]
    Page Should Contain  results for mobile

Finish Testcase
    Close Browser