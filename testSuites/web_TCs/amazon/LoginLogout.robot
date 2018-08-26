###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/21/2018
#Modifications
#Created the login fucntionality test case
###############################################

*** Settings ***
Documentation    This Suite is to Test Product Checkout functionality  
Resource  ../../../resources/web/pageObjects/amazon/objAmazonLogin.robot
Resource    ../../../resources/web/pageObjects/amazon/objPageAmazonHome.robot
Resource    ../../../resources/global.robot

*** Variables ***
${METHOD}  WEB
#${URL}  https://www.amazon.in/
#${BROWSER}  chrome
#${USERNAME}  amber21devtest@gmail.com    
#${PASSWORD}  Welcome_01

*** Test Cases ***
This is to test the Log in
  Open Browser to Log in   ${METHOD}  ${URL}  ${BROWSER}
  Enter the User Name and Password  ${USERNAME}  ${PASSWORD}
  