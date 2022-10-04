*** Variables ***
${input_username}            name=${input.username}
${input_password}            name=${input.password}
${input_login_locator}       xpath=//input[@value='${button.login}']

*** Keywords ***
Input valid username
    [Arguments]        ${username}
    SeleniumLibrary.Input text                ${input_username}                     ${username}

Input valid password
    [Arguments]        ${password}
    SeleniumLibrary.Input text                ${input_password}                     ${password}

Click login button
    SeleniumLibrary.Click element             ${input_login_locator}