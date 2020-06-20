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
    Search The Product
    Verify That Search Loaded
    Close Browser
User Select One Of The Results
    