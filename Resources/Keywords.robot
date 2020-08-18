*** Settings ***
Library  SeleniumLibrary
Resource  BaseKeywords.robot
*** Keywords ***
User Load Page
    Open and Load
    Dismiss Alert
Load Page And Maximize Browser Window
      User Load Page
      Maximize Browser Window
Dismiss Alert
    ${button count}  GET ELEMENT COUNT  css=.lp-panel-dialog
    Run Keyword if  ${button count}>0  Close Alert
Sign In to Account
    Wait And Click  css=.ui-beacon-user > a:nth-child(1)
    ${facebook count}  GET ELEMENT COUNT  css=a.thirdpart-login-icon:nth-child(1)
    ${google count}  GET ELEMENT COUNT  css=a.thirdpart-login-icon:nth-child(2)
    Run Keyword if  ${facebook count}>0  Sign In With Facebook   ELSE IF  ${google count}>0  Sign In With Google  ELSE  Sign In  bazhenkak@gmail.com  123456789
Search The Product
    [Arguments]  ${product}
    Wait Until Page Contains Element  css=.ui-searchbar-keyword
    Input Text  css=.ui-searchbar-keyword   ${product}
    Press Keys  css=.ui-searchbar-keyword  ENTER
User Select One Of The Results
    Wait And Click  css=#product-1 > div:nth-child(2) > h2:nth-child(1) > a:nth-child(2)
Search Settings
    Wait And Click  css=.ui-searchbar-type
    Wait And Click  css=li.ui-searchbar-type-option:nth-child(1)
Click The Product Link
    Wait And Click  css=div.m-gallery-product-item-wrap:nth-child(2) > div:nth-child(1) > div:nth-child(1)
Select Language Settings
    Wait Until Page Contains Element  css=.ui-beacon-translate
    Mouse Down  css=.ui-beacon-translate
Supplier Service
    Wait Until Page Contains Element  css=li.ui-beacon-item:nth-child(2)
    Mouse Down  css=li.ui-beacon-item:nth-child(2)
    
    
