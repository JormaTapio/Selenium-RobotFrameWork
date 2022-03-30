# Yleisiä web-objekti funktioita käytettäväksi
# Tarkituksena tehdä helposti uudelleen käytettäviä funktioita,
# jotka tekevät perustehtäviä kuten napin painaminen jne.

*** Settings ***
library  SeleniumLibrary

*** Keywords ***
Anna Haettavateksti
    [Arguments]  ${haettavateksti}  ${odotusaika}
    Funktion Kuvaus  Hae sivulta tekstiä: ${haettavateksti}
    Sleep  ${odotusaika}
    Page Should Contain  ${haettavateksti}

Anna Syoteteksti
    [Arguments]  ${elementti}   ${syoteteksti}  ${odotusaika}
    Funktion Kuvaus  Anna syötettäväteksti: ${syoteteksti}
    Odota Objektia  ${elementti}   ${odotusaika}
    Input Text  ${elementti}  ${syoteteksti}

Avaa Selain
    [Arguments]  ${url}   ${selain}
    Funktion Kuvaus  Avaa "${url}" -osoitteessa ${selain}-selain
    Open Browser  ${url}   ${selain}
    Maximize Browser Window

Funktion Kuvaus
    [Arguments]  ${funktiokuvaus}
    Log To Console  ${funktiokuvaus}

Etsi Teksti
    [Arguments]  ${teksti}  ${odotusaika}
    Funktion Kuvaus  Etsi tekstiä sisältävä: ${teksti} 
    Odota Objektia  ${teksti}  ${odotusaika}
    Page Should Contain Textfield    ${teksti}

Paina Elementtia
    [Arguments]  ${linkki}  ${odotusaika}
    Funktion Kuvaus  Paina elementtiä: ${linkki}
    Odota Objektia  ${linkki}  ${odotusaika}
	Click Element  ${linkki}

Paina Objektia
    [Arguments]  ${objekti}  ${odotusaika}
    Funktion Kuvaus  Paina objektia: ${objekti}
    Odota Objektia  ${objekti}  ${odotusaika}
	Click Element  ${objekti}

Paina Painiketta
    [Arguments]  ${painike}  ${odotusaika}
    Funktion Kuvaus  Paina painiketta: ${painike}
    Odota Objektia    ${painike}  ${odotusaika}
    Click Button  ${painike}

Odota Objektia
    [Arguments]  ${elementti}   ${odotusaika}
    Funktion Kuvaus  Odota ${elementti} -objektia enintään ajan ${odotusaika} sekunttia   #${default_implicit_wait}+
    Wait Until Element Is Visible  ${elementti} 
    Sleep   ${odotusaika}

Rastita Valintaruutu
    [Arguments]  ${valintaruutu}  ${odotusaika}
    Funktion Kuvaus  Rastita ${valintaruutu} -valintaruutu
    Odota Objektia  ${valintaruutu}   ${odotusaika}  
	Select Checkbox  ${valintaruutu}

Siirry WWW-sivulle
    [Arguments]  ${www-sivu}
    Funktion Kuvaus  Selain siirtyy "${www-sivu}" -sivulle
    Go To  ${www-sivu}

Sulje Selain
    Funktion Kuvaus  Sulje selain
    Close Browser

Tarkista Valintaruuturastitus
    [Arguments]  ${valintaruutu}  ${odotusaika}
    Funktion Kuvaus  Tarkista rastitus ${valintaruutu} -valintaruudussa
    Odota Objektia  ${valintaruutu}  ${odotusaika}
	Checkbox Should Be Selected  ${valintaruutu}
    
Tarkista Ei-Valintaruuturastitus
    [Arguments]  ${valintaruutu}  ${odotusaika}
    Funktion Kuvaus  Tarkista Ei-rastitus ${valintaruutu} -valintaruudussa
    Odota Objektia  ${valintaruutu}  ${odotusaika}
	Checkbox Should Not Be Selected  ${valintaruutu}
