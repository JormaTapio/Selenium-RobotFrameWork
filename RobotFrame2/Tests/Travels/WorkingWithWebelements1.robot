#Video27 & Nro1
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate working with Web Elements in Robot FW
	[Documentation]  TC to demonstrate working with Web Elements in Robot FW

	Open Browser  http://google.com  Chrome  alias=ChromeTMy
	Maximize Browser Window
		Click Button  id=L2AGLb
	Sleep  4s

	${attr}=  Get Element Attribute  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]  class
	#xpath://*[@id="tsf"]//div[3]/center/input[1]  class
	${count}  Get Element Count  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	#xpath://*[@id="tsf"]//div[3]/center/input[1]
	${width}  ${height}=  Get Element Size  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	#xpath://*[@id="tsf"]//div[3]/center/input[1]
    Get WebElement  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	${webelements}=  Get WebElements  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
	#xpath://*[@id="tsf"]//div[3]/center/input[1]


	Capture Element Screenshot  xpath://input[@name='q']
	Assign Id To Element  name:btnK  TMyid
	Page Should Contain Element  TMyid

        Click Element  xpath://input[@name='q']
	Element Should Be Focused  xpath://input[@name='q']
	#TMyid
	#xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div[2]/div[2]/input
	#xpath://input[@name='q']
	Element Should Be Visible  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div[2]/div[2]/input
	#xpath://input[@name='q']

	#Element Should Be Focused  TMyid
	#Element Should Be Visible  xpath://input[@name='q']

	Input Text  xpath://input[@name='q']  RF-education
	Clear Element Text  xpath://input[@name='q']
	Cover Element  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[2]
	#xpath://*[@id="tsf"]//div[2]/div[1]/div[3]/center/div[2]
	Element Attribute Value Should Be  name:btnK  value  Google-haku




	Element Should Be Enabled  name:btnK
	Element Should Not Be Visible  name:btnKgf
	Element Should Contain  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku
	#xpath://*[@id="fsl"]/a[3]  Näin Haku  ##How Search
	Element Should Not Contain  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Google Haku
	#xpath://*[@id="fsl"]/a[3]  Google Search
	Element Text Should Be  xpath:/html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku toimii
	#xpath://*[@id="fsl"]/a[3]  How Search works
	Element Text Should Not Be  xpath://html/body/div[1]/div[5]/div[2]/div[1]/a[4]  Näin Haku
	#xpath://*[@id="fsl"]/a[3]  How Search
	Double Click Element  xpath://input[@name='q']
	#xpath://*[@id="gb_70"]
	Click Element At Coordinates  //*[@id="gb"]/div/div[2]/a  15  10
	#xpath://*[@id="indentifierNext"]/div[2]  15  10
	#Element Should Be Disabled name:btnK

	Close Browser











