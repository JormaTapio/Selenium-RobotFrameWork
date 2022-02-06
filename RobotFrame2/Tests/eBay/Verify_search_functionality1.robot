*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resource/CommonFunctionality.robot
Resource  ../../Resource/PageObjects/HeaderPage.robot
Resource  ../../Resource/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Testcase
Test Teardown  Finish Testcase

*** Variables ***

*** Test Cases ***
Verify basic search Functionaly
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search
	SearchResultsPage.Verify Search Results
