###############################################
#Author : Ambarish Majee
#Date Created : 07/21/2018
#Date Modified : 07/21/2018
#Modifications
#Test the Checkout fucntionality test case
###############################################
*** Settings ***
Resource  ../../../resources/web/pageObjects/amazon/objAmazonLogin.robot
Resource    ../../../resources/web/pageObjects/amazon/objPageAmazonHome.robot
*** Variables ***
${METHOD}  WEB
${URL}  https://www.amazon.in/
${BROWSER}  chrome
${USERNAME}  amber21devtest@gmail.com    
${PASSWORD}  Welcome_01
*** Test Cases ***
Log into the Application with valid id and password
  Open Browser to Log in   ${METHOD}  ${URL}  ${BROWSER}
  Enter the User Name and Password  ${USERNAME}  ${PASSWORD}
  
Purchase the product required
    Enter the Product to be purchesed
    