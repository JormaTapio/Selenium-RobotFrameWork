*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/ConfigDataRV.robot

*** Keywords ***
Start TestCase
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Sleep  2s

Finnish TestCase
  Close Browser