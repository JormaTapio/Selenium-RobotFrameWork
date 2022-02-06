# Mouse Operations
#
# Video33 & Nro

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url1}  https://www.sugarcrm.com/au/request-demo/
${url2}  https://demoqa.com/droppable/
${browser}  chrome

${wait}  2s
${wait1}  0.5s     #With 2 works with some selection
${wait2}  0.3s


*** Test Cases ***
TC to demonstrate mouse operations in Robot FW
	[Documentation]  TC to demostrate mouse operations in Robot FW
	Open Browser  ${url1}  ${browser}
	Maximize Browser Window
	Sleep  ${wait}
	Click Element  xpath:/html/body/div[1]/div[2]/div[4]/div[2]/div/button  #title:Accept All Cookies

	Scroll Element Into View  xpath://*[@id="field28"]/label  #id:interest_market_c0
	Sleep  ${wait1}
	Mouse Down  xpath://*[@id="field25"]/div/input
	Sleep  ${wait1}
	Mouse Up  xpath://*[@id="field25"]/div/input
	Sleep  ${wait1}

	Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
	Sleep  ${wait2}

	Mouse Over  xpath://*[@id="menu-item-20420"]/a
	Sleep  ${wait2}

	Mouse Over  xpath://*[@id="menu-item-19419"]/a
	Sleep  ${wait2}
	Mouse Out  xpath://*[@id="menu-item-19419"]/a
	Sleep  ${wait1}


	Mouse Down On Image  xpath://footer//div[1]/a/img
	Sleep  ${wait2}

	#Drag and drop example
	Go To  ${url2}
	Sleep  ${wait2}
	Drag And Drop  xpath://*[@id="draggable"]  xpath://*[@id="droppable"]
	Sleep  ${wait2}

	# Right click on example
	Open Context Menu  //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[1]/span/div   #xpath://*[@id="sidebar"]/aside[2]/ul/li[2]/a
	Sleep  ${wait1}

	Close Browser



