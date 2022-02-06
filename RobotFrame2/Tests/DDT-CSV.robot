# How to do data driven testing
# Install "Robotframework-driver" -pakege so you cabn import inputs in excel files
#
# Video41

*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Resource  ../DDT/Resources/common.robot

Suite Setup  common.Start TestCase
Suite Teardown  common.Finnish TestCase
Test Template  Invalid Login Scenarious

*** Test Cases ***                                          USERNAME     	 PASSWORD	    ERROR MESSAGE
Verify Login Fails - Blank Username and Blank Password      ${EMPTY}     	 ${EMPTY}	    Epic sadface: Username is required
Verify Login Fails - Blank Username and Correct Password    ${EMPTY}		 secret_sauce   Epic sadface: Username is required   #EMPTY does not clear the field!
Verify Login Fails - Wrong Username		                    standard_us  	 secret_sauce	Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut User		                    locked_out_user  secret_sauce	Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password		                    standard_user	 Secret_sa	    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password            standard_us		 Secret_sa	    Epic sadface: Username and password do not match any
Library  SeleniumLibrary
Resource  ../DDT/Resources/common.robot
Library  ../TestData/TestData.csv
#Library  DataDriver  ../TestData/TestData.csv

Suite Setup  common.Start TestCase
Suite Teardown  common.Finnish TestCase
Test Template  Invalid Login Scenarious

*** Test Cases ***
Verify Login Fails with Invalid Creds  ${username}  ${password}  ${error_msg}

*** Keywords ***
Invalid Login Scenarious
  [Arguments]  ${username}  ${password}  ${error_msg}
  Input text  ${textbox_username}  ${username}
  Input text  ${textbox_password}  ${password}
  Click Button  ${btn_login}
  Sleep  2s  #Can be taking off in real case
  Element Should Contain  ${txt_error}  ${error_msg}

