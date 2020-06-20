***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/BaseKeywords.robot

***Test Cases***
User Loaded Page
    User Loaded Page
    Close Browser
User Sign Into Account
    User Loaded Page
    Sign Into account
    Close Browser
User Search The Product
    User Loaded Page
    Search Settings
    @{PRODUCTS}  Create list  Nintendo  Nintendo switch  Nintendo case 
    FOR  ${PRODUCT}  IN  @{PRODUCTS}
     \  Search The Product  ${PRODUCT}
     \  Click The Product Link
     Close Browser
User Select The Language Settings
    User Loaded Page
    Select Language Settings
    Close Browser
    
    