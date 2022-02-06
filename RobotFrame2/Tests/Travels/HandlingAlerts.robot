# Working with Alerts
# Big challanges with the TC execution
# Very difficult to get really working... perhaps it was me.*** Test Cases ***
# But something strange. I have to use Ctrl+C and close Chrome pages... and most often it is closed by itself(?)
# Video32 & Nro
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
${url2}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
${url3}  http://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
${url4}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
${url5}  http://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
${url6}  https://www.sugarcrm.com/au/request-demo/

${browser}  chrome

${wait}  2s     #With 2 works with some selection
${wait2}  5s

${message1}  None
${message2}  None
${message3}  None

*** Test Cases ***
TC to demonstrate of Handling Alerts Keywords in Robot FW
	[Documentation]  TC to demostratee of Handling Alerts Keywords in Robot FW

	Open Browser  ${url}  ${browser}
	Sleep  ${wait}
	Click Element  id:accept-choices

	Select Frame  iframeResult
	Maximize Browser Window
	Click Button  xpath://body/button
	Sleep  ${wait}
	${message1}=  Handle Alert  ACCEPT  ${wait}  #was without ${message1}=

        Sleep  ${wait}

    Go TO  ${url2}    ##Why?

    	Sleep  ${wait}

	Select Frame  iframeResult
	Maximize Browser Window
	Click Button  xpath://body/button
	Sleep  ${wait2}
	#${message1}=  Handle Alert  DISMISS  ${wait}
	${message1}=  Handle Alert  action=ACCEPT  timeout=${wait}    #action=DISMISS  timeout=2s

	Sleep  ${wait}

	Go To  ${url3}
	Select Frame  iframeResult
	Click Button  xpath://body/button
	Sleep  ${wait}
	Handle Alert  action=ACCEPT  timeout=2s
	# This I can not put working ${message2}=  Handle Alert  action=DISMISS  timeout=${wait}         #ACCEPT  2s      #action=DISMISS  timeout=2s
    ## Perhaås the problem is JavaScript finnish button labels or something else mystical??? Cancel != Peru

	Go To  ${url4}
	Select Frame  iframeResult
	Click Button  xpath://body/button
	Sleep  ${wait2}
	Input Text Into Alert  text=RCVAcademy  action=DISMISS  timeout=${wait}
	#Input Text Into Alert  text=RCVAcademy  action=ACCEPT  timeout=${wait}         ##add timeout #DISMISS(WAS MISSING!) timeout=2s       #Input Text Into Alert  RCVAcademy

	Sleep  ${wait}

	Go To  ${url5}
	Select Frame  iframeResult
	Click Button  xpath://body/button
	Sleep  ${wait}
	Alert Should Be Present  action=ACCEPT  timeout=${wait}
	#Alert Should Be Present  text=Hello  How are you?  action=ACCEPT
	#Difficult to handdle line break \n

	Go To  ${url6}
	Sleep  ${wait}
	Click Element  xpath://html/body/div[1]/div[2]/div[4]/div[2]/div/button
	Alert Should Not Be Present  action=ACCEPT, timeout=${wait}

	Close Browser

