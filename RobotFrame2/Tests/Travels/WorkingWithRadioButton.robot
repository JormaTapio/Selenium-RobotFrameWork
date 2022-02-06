# Allow element does make some problems to handle
# Have to use if-structure

# Strange...things are fixed in the fly? But nice or is it? Just continue...

#Video28 & Nro
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Radio Button Operation Keywords in Robot FW
	[Documentation]  TC to demostrate Radio Button Operation Keywords in RObot FW

	Open Browser  http://www.sugarcrm.com/au/request-demo/  Chrome  alias=ChromeTMy
	Maximize Browser Window
	Sleep  2s
	#Click Button  title:Accept All Cookies  ##title="Accept All Cookies"
	#Click Button  button class:optanon-allow-all accept-cookies-button
	#Click Element  xpath://html/body/div[1]/div[2]/div[4]/div[2]/div/button
	Sleep  2s

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
	Page Should Contain Radio Button  xpath://*[@id="doi0"]
	Page Should Not Contain Radio Button  xpath://*[@id="doi00"]
	Radio Button Should Not Be Selected  doi
	Select Radio Button  doi  0
	Sleep  1s
	Radio Button Should Be Set To  doi  0
	Close Browser

