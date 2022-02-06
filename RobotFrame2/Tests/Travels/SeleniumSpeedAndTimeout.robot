# Timeout
#
# Video34 & Nro

*** Settings ***
Library  SeleniumLibrary  #timeout=10

*** Variables ***

${url1}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
TC to demonstrate Selenium Speed and Timeouts in Robot FW
	[Documentation]  TC to demostrate Selenium Speed and Timeouts in Robot FW
	${default_selenium_timeout}=  Get Selenium Timeout
	${default_selenium_speed}=  Get Selenium Speed
    Set Selenium Timeout  3s
    Set Selenium Speed  1   #0.3s  #0s

	Open Browser  ${url1}  ${browser}
	Maximize Browser Window
	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
	Mouse Down  xpath://*[@id="field25"]/div/input
	Mouse Up  xpath://*[@id="field25"]/div/input
	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
	Mouse Down On Link  xpath://*[@id="menu-item-18904"]/a   #//*[@id="menu-item-107"]/a

	${default_selenium_timeout1}=  Get Selenium Timeout
	${default_selenium_speed1}=  Get Selenium Speed

	Close Browser


