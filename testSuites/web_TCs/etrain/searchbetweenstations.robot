###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/21/2018
#Modifications
#Created the login fucntionality test case
###############################################

*** Settings ***
Documentation    This test is to have the data driven test between pair of stations 
Library           ExcelLibrary
Library           OperatingSystem
Library           robot.api.logger
Resource    ../../../resources/web/pageObjects/etrain/objetrainHome.robot
Test Teardown    Close Browser

*** Variables ***
${METHOD}  WEB
${URL}  https:\\etrain.info\
${BROWSER}  chrome


*** Test Cases ***
Search trains between stations       
  Open Browser and activate home page    ${METHOD}    ${URL}    ${BROWSER}
  Enter the source and destination stations

  