*** Settings ***
Library           AppiumLibrary

*** Variables ***

${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Nexus 6
${PLATFOPRM_VERSION}  Nexus_6_API_28
${BROWSER_NAME}  chrome
${url}   https://etrain.info/

*** Test Cases ***
This test case is to test the web mobile
    Open etrain browser in mobile

*** Keywords ***
Open etrain browser in mobile
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}  deviceName=${DEVICE_NAME}   browserName=${BROWSER_NAME}           
    Input Text    id=com.android.chrome:id/url_bar  ${url}
    Tap    locator    