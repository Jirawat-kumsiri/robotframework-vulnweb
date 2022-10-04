*** Variables ***
${add_to_cart_locator}               xpath=//input[@value='${add_to_cart_text}']
${get_product_price_locator}        //td[contains(text(),'${dollar_text}')]
${get_total_price_locator}          //h3[@align='right']

*** Keywords ***
Cick add to cart
    SeleniumLibrary.Click element             ${add_to_cart_locator}
Verify price is equal to total
    ${get_product_price}               SeleniumLibrary.Get text        ${get_product_price_locator}
    ${get_total_price}                 SeleniumLibrary.Get text        ${get_total_price_locator} 
    ${remove_dollar_text}              String.Remove string            ${get_product_price}                ${dollar_text}
    ${remove_total_text}               String.Remove string            ${get_total_price}                  ${total_text}
    Should Be Equal As Integers        ${remove_dollar_text}           ${remove_total_text}