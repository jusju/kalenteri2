*** Settings ***
Documentation   	Test suite created with ChromeRobot.
Library   	SeleniumLibrary   15.0   5.0

*** Variables ***
${Browser}   	Chrome

*** Test Cases ***
	Open Browser  	http://softwareservice.fi:8080/kalenteri2/viikko.jsp?kenenkalenteri=Jukka   	${BROWSER}
	Page Should Contain   	Jukka lukujärjestys

*** Keywords ***
