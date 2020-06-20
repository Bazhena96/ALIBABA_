***Settings***
Library   SeleniumLibrary
Resource  Variables.robot
Resource  Keywords.robot
***Keywords***
Open and Load
    Open Browser  https://offer.alibaba.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Close Alert
    Wait Until Page Contains Element  css=body > div.ui-window.ui-window-normal.ui-window-transition > a
    Click Element  css=body > div.ui-window.ui-window-normal.ui-window-transition > a
Sign In
    Wait Until PAge Contains Element  css=#fm-login-id
    Input Text  css=#fm-login-id  ${USER_EMAIL}
    Wait Until Page contains Element  css=#fm-login-password
    Input password  css=#fm-login-password  ${USER_PASSWORD}
    Wait Until Page Contains Element  css=#fm-login-submit
    Click Element  css=#fm-login-submit
Sign In With Google
    Wait Until page contains Element  css=a.thirdpart-login-icon:nth-child(2)
    Click Element  css=a.thirdpart-login-icon:nth-child(2)
Sign In With Facebook
    Wait Until Page Contains Element  css=a.thirdpart-login-icon:nth-child(1)
    Click Element  css=a.thirdpart-login-icon:nth-child(1)
    
    