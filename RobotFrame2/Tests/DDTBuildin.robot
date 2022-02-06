# How to do data driven testing
# Key thing is to remember to add Test Template
#
# Video40 & Nro1

*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Resource  ../DDT/Resources/common.robot

Suite Setup  common.Start TestCase
Suite Teardown  common.Finnish TestCase
Test Template  Invalid Login Scenarious

*** Test Cases ***                                          USERNAME     	 PASSWORD	    ERROR MESSAGE
Verify Login Fails - Blank Username and Blank Password      ${EMPTY}     	 ${EMPTY}	    Epic sadface: Username is required1
Verify Login Fails - Blank Username and Correct Password    ${EMPTY}		 secret_sauce   Epic sadface: Username is required   #EMPTY does not clear the field!
Verify Login Fails - Wrong Username		                    standard_us  	 secret_sauce	Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut User		                    locked_out_user  secret_sauce	Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password		                    standard_user	 Secret_sa	    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password            standard_us		 Secret_sa	    Epic sadface: Username and password do not match any
#Verify Login Fails - Blank Username and Correct Password   ${EMPTY}		 secret_sauce   Epic sadface: Username and password do not match any user in this service  # You do need to clear the username field...you see.


*** Keywords ***
Invalid Login Scenarious
  [Arguments]  ${username}  ${password}  ${error_msg}
  Input text  ${textbox_username}  ${username}
  Input text  ${textbox_password}  ${password}
  Click Button  ${btn_login}
  #Sleep  2s  #Can be taking off in real case
  Element Should Contain  ${txt_error}  ${error_msg}

