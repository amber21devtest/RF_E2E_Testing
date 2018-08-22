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
Library    ExcelLibrary 
Library    OperatingSystem
Library    robot.api.logger

*** Variables ***
${Browser}  chrome
${url}   https://etrain.info/
${inputDir}  D:\\00_Workspace\\04_RobotFrameWork\\01_Python\\RF_E2E_Testing
${sFileName}  ${inputDir}/resources/input/etrain/${fileName}
${fileName}  sourceDestination.xls
${sheetName}  srcdstn

 
*** Keywords ***
Open Browser and activate home page
     Open Browser    ${url}  ${Browser}
     Maximize Browser Window
     
    

Enter the source and destination stations
    Open Excel    ${sFileName}  useTempDir=False
    ${rCount}  Get Row Count  	${sheetName}
    : FOR    ${x}    IN RANGE    1    ${rCount}
     \  ${c1Value}  Read Cell Data By Coordinates    ${sheetName}    0   ${x}     
     \  ${c2Value}  Read Cell Data By Coordinates    ${sheetName}    1   ${x}    
     \  Input Text    name=station1    ${c1Value}
     \  Input Text    name=station2    ${c2Value}
     \  Click Element    id=tbssbmtbtn 
      Log  Out of loop
    
   