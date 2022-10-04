*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ${CURDIR}/../keywords/common.robot

Resource    ${CURDIR}/../keywords/features/login_feature.robot
Resource    ${CURDIR}/../keywords/features/category_feature.robot
Resource    ${CURDIR}/../keywords/features/cart_feature.robot

Variables   ${CURDIR}/../testdata/test_data.yaml