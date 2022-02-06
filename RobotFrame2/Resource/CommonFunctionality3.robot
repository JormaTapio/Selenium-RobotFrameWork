#Arguments related stuff
#Video19 & Num3
*** Settings ***
*** Variables ***
#${env}  dev
#&{url}  qa=http://qa.demo.com  uat=http:uat.demo.com  dev=http://dev.demo.com
${URL} =  https://www.eBay.com
*** Keywords ***

Start Testcase

    Open Browser  ${URL}  chrome
    #Open Browser  ${url.${env}}  chrome
    Maximize Browser Window
    Sleep  4s

Finish Testcase
    Close Browser