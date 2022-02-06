#Selenium Web element Locators
#Practise Link and Partial Link
#Video24 & Nro1A

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate the weblocators in Robot FW
    Open Browser  https://www.danskebank.com  Chrome  alias=Tapsa
    Open Browser  https://www.ebay.com  chrome

    Maximize Browser Window
    #Click Link  link:Start selling
    Click Link  partial link:Seller Infor
	Sleep  4s
	Open Browser  about:blank
	Switch Browser  Tapsa
	Close Browser
