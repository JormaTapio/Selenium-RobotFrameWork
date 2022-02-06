# Working with Check Box
# Video29 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate working with CheckBox Keywords in Robot FW
	[Documentation]  TC to demostrate working with CheckBox Keywords in RObot FW

	Open Browser  http://www.sugarcrm.com/au/request-demo/  Chrome  alias=ChromeTMy
	Maximize Browser Window
	Sleep  2s

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
	Page Should Contain Checkbox  id:interest_market_c0

	Page Should Not Contain Checkbox  xpath://*[@id="doi00"]

	Select Checkbox  id:interest_market_c0
	Checkbox Should Be Selected  id:interest_market_c0
	Capture Page Screenshot
	Sleep  1s
	Checkbox Should Be Selected  id:interest_market_c0

	Unselect Checkbox  id:interest_market_c0
	Checkbox Should Not Be Selected  id:interest_market_c0
	Capture Page Screenshot
	Sleep  1s

	Close Browser

