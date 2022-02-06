# Keywords of Emplicit Wait
#
# Video37 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url1}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
TC to demonstrate Selenium Explicit Wait in Robot FW
	[Documentation]  TC to demostrate Selenium Explicit Wait in Robot FW

	Open Browser  ${url1}  ${browser}
	Maximize Browser Window

	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

	Wait Until Page Contains  Request a demo  #With our customers
	Wait Until Page Contains Element  xpath://*[@id="menu-item-19419"]/a
	Wait Until Page Does Not Contain  With our customers1000
	Wait Until Page Does Not Contain  xpath://*[@id="menu-item-19419"]/abc

	Wait Until Location Is  ${url1}
	Wait Until Location Is Not  https://www.sugarcrm.com/au/request-demo/1
	Wait Until Location Contains  au
	Wait Until Location Does Not Contain  aud

	Wait Until Element Contains  xpath://*[@id="menu-item-19419"]/a  Deployment Options  timeout=10s  error=Found Text

	Wait Until Element Does Not Contain  xpath://*[@id="menu-item-16789"]/a  random text
	Wait Until Element Is Enabled   xpath://*[@id="menu-item-19419"]/a
	Wait Until Element Is Not Visible  xpath://*[@id="menu-item-19419"]/a/b
	Wait Until Element Is Visible  xpath://*[@id="menu-item-19419"]/a

	Close Browser






