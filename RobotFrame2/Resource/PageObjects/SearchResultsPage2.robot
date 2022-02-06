*** Settings ***
Library  SeleniumLibrary

Resource  ./HeaderPage.robot

*** Variables ***

${search_result} =  results for

*** Keywords ***
Select product condition

Select delivery options

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
    Click Button  //*[@id="gh-btn"]
    Page Should Contain  ${search_result} ${search_text}