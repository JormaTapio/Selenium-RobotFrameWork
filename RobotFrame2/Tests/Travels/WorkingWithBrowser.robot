#&{alias}  Get Browser Aliases  (=> &{alias} = SeleniumLibrary . Get Browser Aliases)
#The dictionary contains the aliases as keys and the index as value.
#This can be accessed as dictionary ${alias.key} or as list @{alias}[0].
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
	[Documentation]  TC to demostrate Browser Operation Keywords in Robot Framework

	Open Browser  http://google.com  Chrome  alias=ChromeTMy

	Maximize Browser Window

	Click Button  id=L2AGLb

	Open Browser  about:blank  chrome  alias=TMy
	#Open Browser  about:blank  ff  alias=TMy   ##This needs the instalation of firefox selenium webdriver


	&{alias}  Get Browser Aliases

    Log  ${alias}[ChromeTMy]
    #Log  ${alias.ChromeTMy}         #Works
    #Log  ${alias}[1]               ##Dictonary
    #Log  ${alias}[ChromeTMy]       #This works because it is a dictionary
    #Log  @{alias}[1]               ##DIctionary does not have key 1
    #Log  @{alias}[ChromeTMy]       ##...is not list or list-like

	@{browser_ID}  Get Browser Ids

	Log  ${browser_ID}[1]           ##This is a list
	#Log  @{browser_ID}[1]

	Switch Browser  1
	#Switch Browser  1

	Input Text  name=q  RCVAcademy
	#Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  RCVAcademy
	Press Keys  name=q  RETURN

    #@{win_handles}  Get Window Handles
    #Log  @{win_handles}
    #@{win_identifiers}  Get Window Identifiers
    #Log  @{win_identifiers}
	Sleep  1s


	Switch Browser  ${alias}[TMy]
	#Switch Browser  ${browser_ID}[1]       #Works
    #Switch Browser  @{browser_ID}[1]       ##Not working

	Go To  http://salesforce.com

	Close All Browsers