***Settings***
Library  SeleniumLibrary
Resource  Variables.robot
Resource  BaseKeywords.robot
***Keywords***
User Loaded Page
    Open and Load
    Dismiss Alert
Dismiss Alert
    ${BUTTON_COUNTS}  GET ELEMENT COUNT  css=.lp-panel-dialog
    Run Keyword if  ${BUTTON_COUNTS}>0  Close Alert 
Sign Into account
    Wait Until Page Contains Element  css=.ui-beacon-user > a:nth-child(1)
    Click Element  css=.ui-beacon-user > a:nth-child(1)
    ${FACEBOOK_COUNTS}  GET ELEMENT COUNT  css=a.thirdpart-login-icon:nth-child(1)
    ${GOOGLEBUTTONS_COUNT}  GET ELEMENT COUNT  css=a.thirdpart-login-icon:nth-child(2)
    Run Keyword if  ${FACEBOOK_COUNTS}>0  Sign In With Facebook   ELSE IF  ${GOOGLEBUTTONS_COUNT}>0  Sign In With Google  ELSE  Sign In
Search The Product
    [Arguments]  ${PRODUCT}
    Wait Until Page Contains Element  css=.ui-searchbar-keyword
    Input Text  css=.ui-searchbar-keyword   ${PRODUCT}
    Press Keys  css=.ui-searchbar-keyword  ENTER
User Select One Of The Results
    Wait Until Page Contains Element  css=#product-1 > div:nth-child(2) > h2:nth-child(1) > a:nth-child(2)
    Click Element  css=#product-1 > div:nth-child(2) > h2:nth-child(1) > a:nth-child(2)
Search Settings
    Wait Until Page Contains Element  css=.ui-searchbar-type
    Click Element  css=.ui-searchbar-type
    Wait Until Page Contains Element  css=li.ui-searchbar-type-option:nth-child(1)
    Click Element  css=li.ui-searchbar-type-option:nth-child(1)
Click The Product Link
    Wait Until Page Contains Element  css=div.m-gallery-product-item-wrap:nth-child(2) > div:nth-child(1) > div:nth-child(1)
    Click Element  css=div.m-gallery-product-item-wrap:nth-child(2) > div:nth-child(1) > div:nth-child(1) 
Select Language Settings
    Wait Until Page Contains Element  css=.ui-beacon-translate
    Mouse Down  css=.ui-beacon-translate
