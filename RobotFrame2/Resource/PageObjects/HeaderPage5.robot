#How to but arguments into keywords section and create test cases
#Video19 & Nro4
*** Settings ***

Library  SeleniumLibrary

*** Variables ***
#${search_text}  robot      ##static varaible
#@{search_text} =  robot  travel  mobile  computer      ## list variable
#&{search_text}  abc=spoon  bcd=travel       ## dictionary variable

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
## Input Text  xpath://*[@id="gh-ac"]  @{search_text}[1]
## I can not get list variables to working and I do not know why?
	Press Keys  xpath://*[@id="gh-btn"]  RETURN

Click on Advanced Search Link
	Click Element  //*[@id="gh-as-a"]



