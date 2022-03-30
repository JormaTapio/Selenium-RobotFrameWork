#Refactor Selenium Web element Locators with common python file for webelements
#Video21 & Nro6A
*** Settings ***
Library  SeleniumLibrary
Variables  ../Webelements.py

*** Variables ***

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${HeaderPageSearchBoxText}  ${search_text}
	Press Keys  ${HeaderPageSearchButton}  RETURN

Click on Advanced Search Link
	Click Element  ${HeaderPageAdvancedSearchLink}



