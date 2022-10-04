*** Settings ***
Resource    ${CURDIR}/../pages/login_page.robot

*** Keywords ***
Login with valid credentials
    [Arguments]        ${username}        ${password}
    login_page.Input valid username           ${username}
    login_page.Input valid password           ${password}
    login_page.Click login button