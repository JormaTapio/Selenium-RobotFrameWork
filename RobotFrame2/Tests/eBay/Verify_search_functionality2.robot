#Video19 & Nro1A

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
${search_text0} =  vibrator
${search_text1} =  christmas present
${search_text2} =  bicycel
*** Test Cases ***
Verify basic search Functionaly0
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search  ${search_text0}
	SearchResultsPage.Verify Search Results  ${search_text0}

Verify basic search Functionaly1
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search  ${search_text1}
	SearchResultsPage.Verify Search Results  ${search_text1}

Verify basic search Functionaly2
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search  ${search_text2}
	SearchResultsPage.Verify Search Results  ${search_text2}
