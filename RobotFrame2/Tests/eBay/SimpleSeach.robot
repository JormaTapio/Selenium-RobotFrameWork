*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource  ../../Resource/CommonFunctionality.robot
Resource  ../../Resource/eBay_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start Testcase
Test Teardown  Finish Testcase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional
    Verify Search Results
    Verify results by condition
    Verify filter results

*** Keywords ***

Verify results by conditon
    Mouse Over  //*[@id="w7"]/button/div
    Sleep  3s
    Mouse Down  //*[@id="w7"]/div/ul/li[2]
    Click Element  //*[@id="w7"]/div/ul/li[2]

Verify filter results
	Element Should Contain  //

