*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resource/CommonFunctionality.robot
Resource  ../../Resource/PageObjects/HeaderPage.robot
Resource  ../../Resource/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Testcase
Test Teardown  Finish Testcase
Library  SeleniumLibrary
Resource  ../../Resource/CommonFunctionality.robot
Resource  ../../Resource/PageObjects/HeaderPage.robot
Resource  ../../Resource/PageObjects/SearchResultsPage.robot

*** Variables ***

*** Test Cases ***
Verify basic search Functionaly
	[Documentation]  This test case verifis the basic search
	[Tags]  Functional

	HeaderPage.Input Search Text and Click Search
	SearchResultsPage.Verify Search Results

Verify advenced search functionality
	[Documentation]  This test case verifis the advanced search
	[Tags]  Functional

	HeaderPage.Click on Advanced Search Link