*** Settings ***
Documentation           Test suite created with ChromeRobot.
Library         Browser     timeout=10

*** Variables ***
${BROWSER}      chromium
${SLEEP}    5

*** Test Cases ***
Avaa Jukan lukkari test
    Open Browser    http://softwareservice.fi:8080/kalenteri2/viikko.jsp?kenenkalenteri=Jukka   ${BROWSER}
    Sleep    ${SLEEP}
    Wait for Elements State     //h1
    Close Browser

Tarkistetaan ajan syotto
    Open Browser    http://softwareservice.fi:8080/kalenteri2/lisaatapahtuma.jsp   ${BROWSER}
    Sleep    ${SLEEP}
    Close Browser

*** Keywords ***
