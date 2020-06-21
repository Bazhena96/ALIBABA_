***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/BaseKeywords.robot

***Test Cases***
User Loaded Page
    When User Loaded Page
    Then Close Browser
User Sign Into Account
    Given User Loaded Page
    When Sign Into account
    Then Close Browser
User Search The Product
    User Loaded Page
    Search Settings
    @{PRODUCTS}  Create list  Nintendo  Nintendo switch  Nintendo case 
    FOR  ${PRODUCT}  IN  @{PRODUCTS}
     \  Search The Product  ${PRODUCT}
     \  Click The Product Link
     Close Browser
User Select The Language Settings
   Given User Loaded Page
   When Select Language Settings
   Then Close Browser
User Contact With Supplier
    User Loaded Page
    Supplier Service
    Close Browser
    