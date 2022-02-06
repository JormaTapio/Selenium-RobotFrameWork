# If - Else if - Else -structure
#
# Video38 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url1}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
TC to demonstrate IF/ELSE in Robot FW
	[Documentation]  TC to demostrate IF/ELSE in Robot FW

    Open Browser  ${url1}  ${browser}
    Maximize Browser Window

    Input Text  Id:user-name  standard_user  #standard_user
    Input Text  Id:password  secret_sauce    #secret_sauce
    Click Button  xpath://*[@id="login-button"]   #xpath://*[@id="login_button_container"]/div/form/input[3]

    ${items_on_page}=  Get Element Count  xpath://*[@class="inventory_list"]/div

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...  ELSE IF  ${items_on_page} < 10 and ${items_on_page} > 6  Test Keyword 2
    ...  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    Close Browser
Test Keyword 2
    Log To Console  Executed Keyword2 - Found less than expected items
    Close Browser
Test Keyword 3
    Log To Console  Executed Keyword3 - Exception
    Close Browser

