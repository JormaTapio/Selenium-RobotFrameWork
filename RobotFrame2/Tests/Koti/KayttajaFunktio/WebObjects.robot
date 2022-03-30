#Common variables
#Video20 & Num3A
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${dotusaika}   1
#&{url}  qa=http://qa.demo.com  uat=http:uat.demo.com  dev=http://dev.demo.com
${url} =  https://www.is.fi/urheilu/art-2000008716310.html
${selain} =  chrome
${url2} =  https://www.youtube.com/watch?v=rQ6b_PfNiKM

*** Test Cases ***
Kokeilu Testi
    Funktion Kuvaus  Tällä testillä kokeillaan Web-objektifunkioiden toimintaa.
    Avaa Selain  ${url}  ${selain}
    Siirry WWW-sivulle  ${url2}
    Sleep  3
    Sulje Selain

*** Keywords ***
Anna Haettavateksti
    [Arguments]  ${haettavateksti}
    Funktion Kuvaus  Hae sivulta tekstiä: ${haettavateksti}
    Sleep  ${dotusaika}
    Page Should Contain  ${search_text}

Anna Syoteteksti
    [Arguments]  ${xpath}   ${syoteteksti}
    Funktion Kuvaus  Anna syötettäväteksti: ${syoteteksti}
    Odota Objektia  ${xpath}   ${odotusaika}
    Input Text  ${xpath}  ${syoteteksti}

Avaa Selain
    [Arguments]  ${url}   ${selain}
    Funktion Kuvaus  Avaa "${url}" -osoitteessa ${selain}-selain
    Open Browser  ${url}   ${selain}
    Maximize Browser Window

Funktion Kuvaus
    [Arguments]  ${funktiokuvaus}
    Log To Console  ${funktiokuvaus}

Paina Linkkia
    [Arguments]  ${linkki}
    Funktion Kuvaus  Odota ${xpath}
    Odota Objektia  ${linkki}
	Click Link  ${linkki}

Paina Painiketta
    [Arguments]  ${painike}
    Funktion Kuvaus  Paina painiketta: ${painike}
    Wait
    Click Button  ${painike}

Odota Objektia
    [Arguments]  ${xpath}   ${odotusaika}
    Funktion Kuvaus  Odota ${xpath} -objektia enintään ajan ${implicit_time}+${odotusaika} sekunttia
    Wait until element Exist  ${xpath}
    Sleep   ${odotusaika}

Rastita Valintaruutu
    [Arguments]  ${valintaruutu}
    Funktion Kuvaus  Rastita ${valintaruutu} -valintaruutu
    Odota Objektia  ${valintaruutu}
	Select Checkbox  ${valintaruutu}

Siirry WWW-sivulle
    [Arguments]  ${www-sivu}
    Funktion Kuvaus  Selain siirtyy "${www-sivu}" -sivulle
    Go To  ${www-sivu}

Sulje Selain
    Funktion Kuvaus  Sulje selain
    Close Browser

Tarkista Valintaruuturastitus
    [Arguments]  ${valintaruutu}
    Funktion Kuvaus  Tarkista rastitus ${valintaruutu} -valintaruudussa
    Odota Objektia  ${valintaruutu}
	Checkbox Should Be Selected  ${valintaruutu}

Tarkista Ei-Valintaruuturastitus
    [Arguments]  ${valintaruutu}
    Funktion Kuvaus  Tarkista Ei-rastitus ${valintaruutu} -valintaruudussa
    Odota Objektia  ${valintaruutu}
	Checkbox Should Not Be Selected  ${valintaruutu}

