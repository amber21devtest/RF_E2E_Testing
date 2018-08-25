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
Resource    ../../../mobile/mConnection.robot 

*** Variables ***
${strWeb}  WEB
${strMOBILE}  MOBILE


*** Keywords ***
Open Browser to Log in
     [Arguments]   ${method}  ${url}  ${Browser}
      Run Keyword If    '${method}'=='${strWeb}'        Excute Amazonweb execution steps     ${url}  ${Browser}
      Run Keyword If    '${method}'=='${strMOBILE}'    Excute Amazonmobileweb execution steps  ${url}    
            Click Element    xpath=.//*[@id='nav-link-yourAccount']/span[2] 
    

Enter the User Name and Password
    [Arguments]    ${userName}  ${passWord}
    Input Text    xpath=.//*[@id='ap_email']    ${userName}
    Click Element    xpath=.//*[@id='continue']
    Input Text    xpath=.//*[@id='ap_password']    ${passWord}
    Click Element    xpath=//*[@id="signInSubmit"]
    #Close All Browsers
     
 Excute Amazonweb execution steps 
    [Arguments]     ${url}  ${Browser}   
     Open Browser    ${url}  ${Browser}  
     Maximize Browser Window    
     
Excute Amazonmobileweb execution steps
    [Arguments]     ${url}    
    Connect to the Mobile 
    go to    ${url}   
  
    

