*** Settings ***
Library    SeleniumLibrary
Library    sched.py
Library    matplotlib.pyplot

*** Variables ***
${name}    Yes
${URL}    https://www.kbtg.tech
${BROWSER}    chrome

*** Keywords ***
Open The Website
    [Arguments]    ${url}    ${browser}   
    Open Browser    ${url}    ${browser}
    #Wait Until Keyword Succeeds    10s   

*** Test Cases ***
TS_01 : เปิดหน้าเว็บไซต์
    #Open Browser     url=https://www.google.com   browser=chrome
    Open The Website    ${URL}    ${BROWSER}
    Maximize Browser Window
    #Input Text  name=q  Hollywood Celebrities
    #Click Button  value="ค้นหาด้วย Google"
    #Log To Console    TC001
