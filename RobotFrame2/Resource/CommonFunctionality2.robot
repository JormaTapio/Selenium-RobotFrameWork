*** Settings ***
*** Variables ***
${env}  dev
&{url}  qa=http://qa.demo.com  uat=http:uat.demo.com  dev=http://dev.demo.com
*** Keywords ***

Start Testcase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window
    Sleep  robot -d Results Tests\Travels\VariableScope.robot4s

Finish Testcase
    Close Browser