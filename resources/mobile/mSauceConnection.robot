###############################################
#Author : Ambarish Majee
#Date Created : 08/25/2018
#Date Modified : 08/25/2018
#Modifications
#Created the mobile connection string
###############################################
*** Settings ***
Documentation  Search in etrain.info site for source and destination stations in mobile
Library           Selenium2Library
Library           Collections


*** Variables ***
#${USERNAME}     amber21testdev
#${KEY}  6b34c98e-d08d-40ed-9a87-3d1a1f08dddb

${USERNAME}     testAutothon
${KEY}  4a0153ff-30e4-4f83-a0b7-cd49b8a84e99
${REMOTE_URL}     https://${USERNAME}:${KEY}@ondemand.saucelabs.com:443/wd/hub
#ondemand.saucelabs.com:80/wd/hub

*** Keywords ***
Connect to the sauce lab Mobile
    ${Options}    Create Dictionary    androidPackage    com.android.chrome
    ${capbilities}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${capbilities}    platformName    Android
    Set to Dictionary    ${capbilities}    platformVersion    6.0
    Set To Dictionary    ${capbilities}    deviceName    Android Emulator
    Set To Dictionary    ${capbilities}    browserName    chrome
    Set To Dictionary    ${capbilities}    appiumVersion    1.8.1
    Set To Dictionary    ${capbilities}    deviceOrientation  portrait
    
    Create Webdriver  Remote    command_executor=${REMOTE_URL}    desired_capabilities=${capbilities}