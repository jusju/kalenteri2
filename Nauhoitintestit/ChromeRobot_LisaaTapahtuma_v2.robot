*** Settings ***
Documentation   	Test suite created with ChromeRobot.
Library   	SeleniumLibrary   15.0   5.0

*** Variables ***
${Browser}   	Chrome
${viikonpäivä}   	Maanantai
${aloitusaika}   	12:00
${lopetusaika}   	12:45
${aihe_esim_o2}   	RA
${sijainti}   	5006

*** Test Cases ***
Chrome Robot Test Case
	Open Browser  	http://softwareservice.fi:8080/kalenteri2/viikko.jsp?kenenkalenteri=Jukka   	${BROWSER}
	Page Should Contain   	Jukka lukujärjestys
	Click Element   	xpath:.//h1[contains(normalize-space(.), 'Jukka lukujärjestys')]
	Click Link   	lisaatapahtuma.jsp
	Page Should Contain   	Lisää tapahtuma
	Input Text   	viikonpaiva   	${viikonpäivä}
	Input Text   	aloitusaika   	${aloitusaika}
	Input Text   	lopetusaika   	${lopetusaika}
	Input Text   	aihe   	${aihe_esim_o2}
	Input Text   	sijainti   	${sijainti}
	Click Button   	Talleta

*** Keywords ***
