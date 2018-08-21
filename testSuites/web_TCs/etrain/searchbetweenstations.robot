###############################################
#Author : Ambarish Majee
#Date Created : 08/21/2018
#Date Modified : 08/21/2018
#Modifications
#Created the login fucntionality test case
###############################################

*** Settings ***
Documentation    This test is to have the data driven test between pair of stations 
Resource    ../../../resources/web/pageObjects/etrain/objetrainHome.robot

*** Test Cases ***
Search trains between stations       
  Open Browser and activate home page
  Enter the source and destination stations

  