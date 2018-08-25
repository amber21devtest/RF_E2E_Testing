###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/22/2018
#Modifications
#Created the initail version of POM
###############################################
*** Settings ***
Documentation  Search in etrain.info site for source and destination stations
Library    Selenium2Library    
Library    BuiltIn
Library    ExcelLibrary 
Library    OperatingSystem
Library    robot.api.logger
Resource    ../../../mobile/mConnection.robot    

*** Variables ***
#${Browser}  chrome
#${url}   https://etrain.info/
${inputDir}  D:\\00_Workspace\\04_RobotFrameWork\\01_Python\\RF_E2E_Testing
${sFileName}  ${inputDir}/resources/input/etrain/${fileName}
${fileName}  sourceDestination.xls
${sheetName}  srcdstn
${strWeb}  WEB
${strMOBILE}  MOBILE

 
*** Keywords ***
Open Browser and activate home page
     [Arguments]    ${method}  ${url}  ${Browser}   
      Run Keyword If    '${method}'=='${strWeb}'       Excute web execution steps    ${url}  ${Browser}
      Run Keyword If    '${method}'=='${strMOBILE}'    Excute mobileweb execution steps  ${url}      
     
    
Enter the source and destination stations
    Open Excel    ${sFileName}  useTempDir=False
    ${rCount}  Get Row Count  	${sheetName}
    : FOR    ${x}    IN RANGE    1    ${rCount}
     \  ${c1Value}  Read Cell Data By Coordinates    ${sheetName}    0   ${x}     
     \  ${c2Value}  Read Cell Data By Coordinates    ${sheetName}    1   ${x}    
     \  Input Text    id=tbsfi1    ${c1Value}
     \  sleep  5
     \  Press key  id=tbsfi1  \\13
     \  Input Text    id=tbsfi3    ${c2Value}
     \  press key   id=tbsfi3  \\13 
     \  Click Button     id=tbssbmtbtn   



Excute web execution steps 
    [Arguments]     ${url}  ${Browser}   
     Open Browser    ${url}  ${Browser}  
     Maximize Browser Window    
     
Excute mobileweb execution steps
    [Arguments]     ${url}    
    Connect to the Mobile 
    go to    ${url}
    
   