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
    Wait Until Page Contains Element  css=.ui-searchbar-keyword
    Input Text  css=.ui-searchbar-keyword   ${SEARCH_TERM}
    Press Keys  css=.ui-searchbar-keyword  ENTER
    
    