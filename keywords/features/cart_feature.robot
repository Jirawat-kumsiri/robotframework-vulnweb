*** Settings ***
Resource    ${CURDIR}/../pages/cart_page.robot

*** Keywords ***
Add product to cart and verify price is eqaul to total
    cart_page.Cick add to cart
    cart_page.Verify price is equal to total