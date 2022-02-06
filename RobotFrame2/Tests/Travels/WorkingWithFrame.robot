# Working with Frames

#Video30 & Nro
*** Settings ***
Library  SeleniumLibrary

*** variables ***
${browser}  chrome

*** Test Cases ***
TC to demonstrate working with Frame Keywords in Robot FW
	[Documentation]  TC to demostrate working with Frame Keywords in RObot FW

	Open Browser  http://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  ${browser}  alias=ChromeTMy
	#Open Browser  http://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome  alias=ChromeTMy
	Maximize Browser Window
	Sleep  2s

    Select Frame  id:iframeResult

	Current Frame Should Contain  JavaScript Alert
	Current Frame Should Not Contain  JavaScript Confirm Box Two
	Unselect Frame

	Frame Should Contain  id:iframeResult  JavaScript Alert

	Close Browser

