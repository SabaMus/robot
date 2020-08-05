*** Settings ***
Documentation    Suite description
Documentation   These are the test cases based on Amazon webbrowser functionality
Resource       ../Resources/keywords.robot
Library        SeleniumLibrary
Suite Setup    Begain Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =     chrome
${URL} =  https://www.amazon.com

*** Test Cases ***
User can access amazon.com
    [Documentation]                User is able to open the webbrowser
    [Tags]                         Test 1
    Go to Web Page


User can conduct a search
    [Documentation]               User is able to search the product
    [Tags]                        Test 2
    Go to Web Page
    Search for the product        ferrari 458    result for "ferrari 458"

User can conduct another search
    [Documentation]               User is able to search another product
    [Tags]                        Test 3
    Go to Web Page
    Search for the product        tesla model x results for "tesla model x"