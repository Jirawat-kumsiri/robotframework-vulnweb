*** Variables ***
${menu_locator}                    xpath=//div[@id='sectionLinks']/ul/li/a[text()='${menu.menu_name}']
${category_name_locator}           xpath=//div[@class='story']/a/h3[text()='${menu.category.category_name}']
${product_name_locator}            xpath=//div[@class='story']/a/h3[text()='${menu.category.product_name}']
${author_locator}                  xpath=//div[@class='story']/p/a[text()='${menu.category.author}']

*** Keywords ***
Click category
    SeleniumLibrary.Click element        ${menu_locator}

Click category name
    SeleniumLibrary.Click Element        ${category_name_locator}

Verify name
    SeleniumLibrary.Element text should be        ${product_name_locator}        ${menu.category.product_name}

Verify author
    SeleniumLibrary.Element text should be        ${author_locator}      ${menu.category.author}

Click product name
    SeleniumLibrary.Click element                 ${product_name_locator}


