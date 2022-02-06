#Common variables
#Video20 & Num3A
*** Settings ***
*** Variables ***
#${env}  dev
#&{url}  qa=http://qa.demo.com  uat=http:uat.demo.com  dev=http://dev.demo.com
${url} =  https://www.eBay.com
${browser} =  chrome
*** Keywords ***

Start Testcase

    Open Browser  ${url}  ${browser}
    #Open Browser  ${url.${env}}  chrome
    Maximize Browser Window
    Sleep  4s

Finish Testcase
    Close Browser