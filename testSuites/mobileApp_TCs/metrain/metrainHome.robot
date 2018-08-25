*** Settings ***
Library           Selenium2Library
Library           Collections

*** Variables ***
#${url}   https://etrain.info/
${url}   https://amazon.in/





*** Test Cases ***
AndroidConnection
    ${Options}    Create Dictionary    androidPackage    com.android.chrome
    ${caps}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${caps}    platformName    Android
    #Set to Dictionary    ${caps}    platformVersion    8.0
    Set To Dictionary    ${caps}    deviceName    galaxy_nexus
    Set To Dictionary    ${caps}    browserName    Chrome
    Create Webdriver    Remote    command_executor=http://127.0.0.1:4723/wd/hub    desired_capabilities=${caps}
    go to    ${url}
    
    Click Element    id=tbsfi1
	Input Text    id=tbsfi1    CHENNAI CENTRAL
	#Tap    id=tbsfi1    233    363
		# id=tbsfi3
	Click Element    id=tbsfi3
	Input Text    id=tbsfi3    RANCHI
	#Tap    id=tbsfi3    193    412
		# id=tbssbmtbtn
	Click Element    id=tbssbmtbtn
    Close Browser