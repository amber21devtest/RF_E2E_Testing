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

*** Keywords ***
Connect to the Mobile
    ${Options}    Create Dictionary    androidPackage    com.android.chrome
    ${capbilities}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${capbilities}    platformName    Android
    Set To Dictionary    ${capbilities}    deviceName    galaxy_nexus
    Set To Dictionary    ${capbilities}    browserName    chrome
    Create Webdriver    Remote    command_executor=http://127.0.0.1:4723/wd/hub    desired_capabilities=${capbilities}