*** Settings ***
Resource         ${CURDIR}/../import/import.robot
Test Setup       common.Open vulnweb
Test Teardown    SeleniumLibrary.Close all browsers

*** Test Cases ***
Test 001
    login_feature.Login with valid credentials    ${login.username}    ${login.password}
    category_feature.Verify product name and author on category page
    cart_feature.Add product to cart and verify price is eqaul to total