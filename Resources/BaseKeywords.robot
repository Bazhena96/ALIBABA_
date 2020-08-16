*** Settings ***
Library   SeleniumLibrary
Resource  Keywords.robot
*** Keywords ***
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Open and Load
    Open Browser  https://offer.alibaba.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Close Alert
    Wait And Click  css=body > div.ui-window.ui-window-normal.ui-window-transition > a
Sign In
    [Arguments]  ${user email}  ${user password}
    Wait Until PAge Contains Element  css=#fm-login-id
    Input Text  css=#fm-login-id  ${user email}
    Wait Until Page contains Element  css=#fm-login-password
    Input password  css=#fm-login-password  ${user password}
    Wait And Click  css=#fm-login-submit
Sign In With Google
    Wait And Click  css=a.thirdpart-login-icon:nth-child(2)
Sign In With Facebook
    Wait And Click  css=a.thirdpart-login-icon:nth-child(1)

    