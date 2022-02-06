# For Loop Demo
#
# Video39 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
TC to demonstrate FOR Loop in Robot Framework
	[Documentation]  TC to demostrate FOR Loop in Robot Framework

    Open Browser  ${url}  ${browser}
    Maximize Browser Window

    Click Element  xpath://*[@id="L2AGLb"]/div
    Input Text  name:q  RCV Academy
    Press Keys  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]  RETURN  #xpath://*[@id="tsf"]//div[2]/ul/li  RETURN

    @{results_on_page}=  Get WebElements  xpath://*[@id="rso"]/div       # Check out this one... //*[@id="rso"]/div/div/

    FOR  ${element}  IN  @{results_on_page}
	  ${text}=  Get Text  ${element}
    END

    Close Browser