#Video26 & Nro
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Browser Windw Operation Keywords in Robot FW
	[Documentation]  TC to demostrate Browser Window Operation Keywords in RObot FW

	Open Browser  http://saleforce.com  Chrome  alias=ChromeTMy
	Maximize Browser Window
	#Sleep  1s
	Click Button  id:onetrust-accept-btn-handler
	Sleep  2s
	#Click Text  TRY FOR FREE  ##This is what it is ractually trying
	#Wait Until Element Is Visible  xpath://*[@id="main"]/div[6]/div/div[5]/div/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/div/div[2]/div[1]/div[6]/div/div/div/a
	#Click Link  xpath://*[@id="main"]/div[6]/div/div[5]/div/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/div/div[2]/div[1]/div[6]/div/div/div/a
	Click Link  Sales Force Automation


	@{WindowHandles}=  Get Window Handles
	Sleep  1s

	@{WindowIdentifier}=  Get WIndow Identifiers
	Sleep  1s

	@{WindowNames}=  Get Window Names
	Sleep  1s

	@{WindowTitle}=  Get Window Titles
	Sleep  1s

	Set Window Position  100  200

	${x}  ${y}=  Get Window Position
	Log  ${x}
	LOg  ${y}
	Sleep  1s

	Set Window Size  800  600

	${width}  ${height}=  Get Window Size
	Log  ${width}
	Log  ${height}
	Sleep  1s

	Switch Window  ${WindowHandles}[0]      ##@{WindowHandles}[1]=>${WindowHandles}[0]
	Log  ${WindowHandles}[0]
	Sleep  1s

    #Click Link  Improve customer service
    #Sleep  3s

	Close Window
	#Sleep  1s

	#Switch Window  ${WindowHandles}[0]
	#Close Window

