#Selenium Web element Locators
#Video22 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate the weblocators in Robot FW
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window
    Input Text  name:_nkw  bicycle   #id:gh-ac  bicycle
	Click Element  id=gh-btn
	Sleep  4s
	Close Browser
