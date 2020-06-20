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
Select The Language Setting
    Wait Until Page Contains Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > span:nth-child(2) > b:nth-child(2)
    Click Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > span:nth-child(2) > b:nth-child(2)
Select The Currency Settings
    Wait Until Page Contains Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > input:nth-child(2)
    Click Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(2) > li:nth-child(1) > ul:nth-child(2) > li:nth-child(1)
Select The Country To Delivery
    Wait Until Page Contains Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > input:nth-child(2)
    Click Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(2) > li:nth-child(1) > ul:nth-child(2) > li:nth-child(1)
Save Settings
    Wait Until Page Contains Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(6) > button:nth-child(1)
    Click Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(6) > button:nth-child(1)
Select The Account
    Wait Until Page Contains Element  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1)
    Mouse Down  css=.sc-hd-right > div:nth-child(3) > div:nth-child(1)