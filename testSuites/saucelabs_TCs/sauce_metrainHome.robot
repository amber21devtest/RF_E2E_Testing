*** Settings ***
Library           AppiumLibrary
Library           sauceclient 

*** Variables ***
${USERNAME}     amber21testdev
${KEY}  6b34c98e-d08d-40ed-9a87-3d1a1f08dddb
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Android Emulator
${PLATFOPRM_VERSION}  6.0
${BROWSER_NAME}  chrome
${REMOTE_URL}     http://${USERNAME}:${KEY}@ondemand.saucelabs.com:80/wd/hub
${ANDRIOD_PACKAGE}  com.android.chrome
${url}   https://etrain.info/

*** Test Cases ***
This test case is to test the web mobile
    Open etrain browser in mobile

*** Keywords ***
Open etrain browser in mobile

    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}  deviceName=${DEVICE_NAME}   browserName=${BROWSER_NAME}  androidPackage=${ANDRIOD_PACKAGE}           
    # id=com.android.chrome:id/url_bar
  Input Text    id=com.android.chrome:id/url_bar    etrain.info
  Tap    id=com.android.chrome:id/url_bar    709    1107
# id=tbsfi1
  Input Text    id=tbsfi1    CHENNAI
  Tap    id=tbsfi1    235    367
# id=tbsfi3
  Input Text    id=tbsfi3    RANCHI
  Tap    id=tbsfi3    180    411
  Tap    id=tbsfi3    375    448  