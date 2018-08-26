###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/21/2018
#Modifications
#Created the login fucntionality test case
###############################################

*** Settings ***
Documentation    This test is to have the data driven test between pair of stations 
Library           Selenium2Library  
Library           ExcelLibrary
Library           OperatingSystem
Library           robot.api.logger
Resource    ../../../resources/web/pageObjects/etrain/objetrainHome.robot
Resource    ../../../resources/mobile/mSauceConnection.robot
Test Teardown    Close Browser

*** Variables ***
${METHOD}  MOBILE
${URL}  https:\\etrain.info\
${BROWSER}  chrome


*** Test Cases ***
Mobile web testing in sauce lab infrastructure 
    Connect to the sauce lab Mobile  
    go to    ${url}
    Enter the source and destination stations