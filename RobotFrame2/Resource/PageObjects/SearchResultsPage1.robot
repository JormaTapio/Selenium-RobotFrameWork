*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Select product condition

Select delivery options

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Click Button  //*[@id="gh-btn"]
    Page Should Contain  results for mobile