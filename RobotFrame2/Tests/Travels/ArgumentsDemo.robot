#Video19 Nro
*** Settings ***

*** Test Cases ***
Argument demo keyword demo1
    Argument demo keyword  Jorma  Tapio

Argument demo keyword demo2
    Argument demo keyword  Ville  Tapio

*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}