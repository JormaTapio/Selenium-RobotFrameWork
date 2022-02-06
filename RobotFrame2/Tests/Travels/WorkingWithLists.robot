# Working with Frames
# Video31 & Nro
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
TC to demonstrate List Operation Keywords in Robot FW
	[Documentation]  TC to demostrate List Operation Keywords in Robot FW

	Open Browser  ${url}  ${browser}  alias=ChromeTMy
	Maximize Browser Window
	Sleep  2s
	Scroll Element Into View  xpath://*[@id="field1"]/div/input

	Page Should Contain List  xpath://*[@id="field27"]/div/select
	Page Should Not Contain List  xpath://*[@id="field27"]/div/selectt

	@{AllItems}=  Get List Items  xpath://*[@id="field27"]/div/select
	${ListLabel}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
	${LIstValue}=  Get Selected List Value   xpath://*[@id="field27"]/div/select

	Sleep  2s

	List Selection Should Be  xpath://*[@id="field27"]/div/select  Company Size*

	Select From List By Index  xpath://*[@id="field27"]/div/select  1
	${LLabel1}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
	${LLabel1TMy}=  Get List Items  xpath://*[@id="field27"]/div/select
	Sleep  2s

	Select From List By Label  xpath://*[@id="field27"]/div/select  51 - 100 employees
	${LLabel2}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
	Sleep  2s

	Select From List By Value  xpath://*[@id="field27"]/div/select  level5
	${LLabel3}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
	Sleep  2s

#	Multiselect lists
	Go to  http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
	Sleep  1s
	Click Element  id:accept-choices

	Select frame  id:iframeResult
	Select All From List  xpath://*[@id="cars"]
	Sleep  2s
	@{ListLabels}=  Get Selected List Labels  xpath://*[@id="cars"]
	Sleep  2s
	Unselect From List By Value  xpath://*[@id="cars"]  audi
	Sleep  2s
	Unselect From List By Index  xpath://*[@id="cars"]  1
	Sleep  2s
	Unselect From List By Label  xpath://*[@id="cars"]  Volvo
	Sleep  2s
	@{ListValues}=  Get Selected List Values  xpath://*[@id="cars"]
	Sleep  2s
	Unselect All From List  xpath://*[@id="cars"]
	Sleep  2s
	List Should Have No Selections  xpath://*[@id="cars"]

	Close Browser



