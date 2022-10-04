*** Keywords ***
Open vulnweb
    [Arguments]        ${browser}=chrome
    SeleniumLibrary.Open browser        ${url}        ${browser}