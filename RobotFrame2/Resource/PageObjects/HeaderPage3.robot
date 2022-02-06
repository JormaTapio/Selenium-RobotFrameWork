*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
#${search_text}  robot

#LIST__@{search_text} =     | robot | travel |  mobile | computer
@{search_text} =  robot  travel  mobile  computer

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  @{search_text}[1]
#Input Text  xpath://*[@id="gh-ac"]  @{search_text}[1]
## I can not get list variables to working and I do not know why?k
	Press Keys  xpath://*[@id="gh-btn"]  RETURN

Click on Advanced Search Link
	Click Element  //*[@id="gh-as-a"]



