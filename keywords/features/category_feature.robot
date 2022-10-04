*** Settings ***
Resource    ${CURDIR}/../pages/category_page.robot

*** Keywords ***
Verify product name and author on category page
    category_page.Click category
    category_page.Click category name
    category_page.Verify name
    category_page.Verify author
    category_page.Click product name