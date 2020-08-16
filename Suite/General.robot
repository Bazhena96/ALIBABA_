*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/BaseKeywords.robot

*** Test Cases ***
User loaded page
    User Loaded Page
    Close Browser
User sign in to account
    User Loaded Page
    Sign Into account
    Close Browser
User search the product
    User Loaded Page
    Search Settings
    @{products}  Create list  Nintendo  Nintendo switch  Nintendo case
    FOR  ${product}  IN  @{products}
       Search The Product  ${product}
       Click The Product Link
     END
     Close Browser
User select the language settings
    User Loaded Page
    Select Language Settings
    Close Browser
User contact with supplier
    User Loaded Page
    Supplier Service
    Close Browser
    