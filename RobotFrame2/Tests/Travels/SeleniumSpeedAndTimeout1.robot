# Timeout
#
# Video34 & Nro1

*** Settings ***
Library  SeleniumLibrary  #timeout=10

*** Variables ***

${url1}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

${wait1}  2s
${wait2}  4s


*** Test Cases ***
TC to demonstrate Selenium Speed and Timeouts in Robot FW
	[Documentation]  TC to demostrate Selenium Speed and Timeouts in Robot FW
	${default_selenium_timeout}=  Get Selenium Timeout
	${default_selenium_speed}=  Get Selenium Timeout
    #Set Selenium Timeout  3s
    #Set Selenium Speed  2s

	Open Browser  ${url1}  ${browser}
	Maximize Browser Window

	#Alert Should Be Present

	Mouse Down  xpath://*[@id="field25"]/div/input
	Sleep  ${wait1}

	Mouse Up  xpath://*[@id="field25"]/div/input
	Sleep  ${wait1}

	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
	Sleep  ${wait2}

	Mouse Down On Link  xpath://*[@id="menu-item-107"]/a
	Close Browser


