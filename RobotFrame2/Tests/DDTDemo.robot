# How to do data driven testing
#
# Video40 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
${textbox_username}  id:user-name
${textbox_password}  id:password
${btn_login}  id:login-button       #xpath://*[@id="login_button_container"]/div/form/input[3]
${txt_error}  xpath://*[@id="login_button_container"]//h3

*** Test Cases ***
Verify Login Fails - Wrong User
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Input Text  ${textbox_username}  standard_us
  Input Text  ${textbox_password}  secret_sauce
  Click Button  ${btn_login}
  Sleep  2s
  Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
  Close Browser

Verify Login Fails - LockedOut User
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Input Text  ${textbox_username}  locked_out_user
  Input Text  ${textbox_password}  secret_sauce
  Click Button  ${btn_login}
  Sleep  2s
  Element Should Contain  ${txt_error}  Epic sadface: Sorry, this user has been locked out.
  Close Browser

Verify Login Fails - Wrong Password
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Input Text  ${textbox_username}  locked_out_user
  Input Text  ${textbox_password}  secret_sa
  Click Button  ${btn_login}
  Sleep  2s
  Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
  Close Browser

Verify Login Fails - Wrong Username and Password
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Input Text  ${textbox_username}  standard_u
  Input Text  ${textbox_password}  secret_s
  Click Button  ${btn_login}
  Sleep  2s
  Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any
  Close Browser

Verify Login Fails - Blank Username and Password
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Input Text  ${textbox_username}  ${EMPTY}
  Input Text  ${textbox_password}  ${EMPTY}
  Click Button  ${btn_login}
  Sleep  2s
  Element Should Contain  ${txt_error}  Epic sadface: Username is required
  Close Browser

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    Close Browser
