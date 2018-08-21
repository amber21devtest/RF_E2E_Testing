###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/21/2018
#Modifications
#Created the initail version of POM
###############################################
*** Settings ***
Documentation  Page Object Amazon Log in page 
Library    Selenium2Library    
Library    BuiltIn
Library  ExcelLibrary 

*** Variables ***
${Browser}  chrome
${url}   https://etrain.info
${driverLocation}  /RF_E2E_Testing/resources/input/etrain/sourceDestination.xlsx 



*** Keywords ***
Open Browser and activate home page
     Open Browser    ${url}  ${Browser}
     Maximize Browser Window
     
    

Enter the source and destination stations
    Input Text    name=station1    CHENNAI CENTRAL
    Input Text    name=station2    RANCHI
    Click Element    id=tbssbmtbtn    