*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/BaseKeywords.robot

*** Test Cases ***
User load page
    Load Page And Maximize Browser Window
    Close Browser
User sign in to account
    Load Page And Maximize Browser Window
    Sign In to account
    Close Browser
User search the product
    Load Page And Maximize Browser Window
    Search Settings
    @{products}  Create list  Nintendo  Nintendo switch  Nintendo case
    FOR  ${product}  IN  @{products}
       Search The Product  ${product}
       Click The Product Link
     END
     Close Browser
User select the language settings
    Load Page And Maximize Browser Window
    Select Language Settings
    Close Browser
User contact with supplier
    Load Page And Maximize Browser Window
    Supplier Service
    Close Browser
    