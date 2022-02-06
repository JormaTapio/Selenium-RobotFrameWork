#Video21 & Nro2A (Refactor Selenium Web element Locators)

Resource  ../../Resources/PageObjects/SearchResultsPage.robot

*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resource/CommonFunctionality.robot
Resource  ../../Resource/PageObjects/HeaderPage.robot
Resource  ../../Resource/PageObjects/SearchResultsPage.robot

Test Setup  Start Testcase
Test Teardown  Finish Testcase
#Test Setup  CommonFunctionality.Start TestCase
#Test Teardown  CommonFunctionality.Finish TestCase
*** Variables ***
${search_text} =  bicycel

*** Test Cases ***
Verify basic search Functionaly
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search  ${search_text}
	SearchResultsPage.Verify Search Results  ${search_text}
