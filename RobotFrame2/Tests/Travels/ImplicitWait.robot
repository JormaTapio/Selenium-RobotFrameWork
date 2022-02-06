# Implicit Wait
#
# Video36 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url1}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
TC to demonstrate Selenium Implicit Wait in Robot FW
	[Documentation]  TC to demostrate Selenium Implicit Wait in Robot FW
	${default_implicit_wait}=  Get Selenium Implicit Wait

	Set Selenium Implicit Wait  20s
	${default_implicit_wait}=  Get Selenium Implicit Wait


	Open Browser  ${url1}  ${browser}
	Maximize Browser Window

	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

	Mouse Down  xpath://*[@id="field25"]/div/input
	Mouse Up  xpath://*[@id="field25"]/div/input

	Close Browser


