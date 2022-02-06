# Get familar with commands of common web elements
# Veryfy existing things
# Video27 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate working with Web Elements in Robot FW
	[Documentation]  TC to demonstrate working with Web Elements in Robot FW

	Open Browser  http://google.com  Chrome  alias=ChromeTMy
	Maximize Browser Window
	Click Button  id=L2AGLb
	Sleep  4s

	${attr}=  Get Element Attribute  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]  class
	${count}  Get Element Count  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	${width}  ${height}=  Get Element Size  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Get WebElement  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	${webelements}=  Get WebElements  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

	Capture Element Screenshot  xpath://input[@name='q']
	Assign Id To Element  name:btnK  TMyid
	Page Should Contain Element  TMyid

    Click Element  xpath://input[@name='q']
	Element Should Be Focused  xpath://input[@name='q']
	Element Should Be Visible  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div[2]/div[2]/input

	Input Text  xpath://input[@name='q']  RF-education
	Clear Element Text  xpath://input[@name='q']
	Cover Element  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[2]
	Element Attribute Value Should Be  name:btnK  value  Google-haku

	Element Should Be Enabled  name:btnK
	Element Should Not Be Visible  name:btnKgf
	Element Should Contain  xpath://html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku
	Element Should Not Contain  xpath://html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Google Haku
	Element Text Should Be  xpath://html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku toimii
	Element Text Should Not Be  xpath://html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku
	Double Click Element  xpath://input[@name='q']
	Click Element At Coordinates  xpath://*[@id="gb"]/div/div[2]/a  15  10

	Close Browser

TC to demonstrate working with Web Elements in Robot FW PLUS
    [Documentation]  TC to demonstrate working with Web Elements in Robot FW PLUS

	Open Browser  http://google.com  Chrome  alias=ChromeTMy
	Maximize Browser Window
	Click Button  id=L2AGLb
	Sleep  1s
	Close Browser










