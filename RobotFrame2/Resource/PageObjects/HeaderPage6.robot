#Refactor Selenium Web element Locators
#Video21 & Nro5A
*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${SearchBoxText} =  xpath://*[@id="gh-ac"]
${SearchButton} =  xpath://*[@id="gh-btn"]
${AdvancedSearchLink} =  //*[@id="gh-as-a"]
*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${SearchBoxText}  ${search_text}
	Press Keys  ${SearchButton}  RETURN

Click on Advanced Search Link
	Click Element  ${AdvancedSearchLink}



