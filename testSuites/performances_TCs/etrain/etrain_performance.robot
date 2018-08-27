*** Settings ***
Library           Selenium2Library
Library           JMeterLib.py
Library           Collections

*** Variables ***
${jMeterStartup}  C:/Jmeter/bin/jmeter.bat
${jmxFileLocation}  D:/00_Workspace/07_Jmeter/00_SampleTestCases/etrain.info.jmx
${outputResults}  D:/00_Workspace/04_RobotFrameWork/01_Python/RF_E2E_Testing/outputResults
#D:/00_Workspace/04_RobotFrameWork/01_Python/RF_E2E_Testing/outputResults

*** Test Cases ***

tc1_justRunJMeter
    [Tags]    Performance
    Run jmeter   ${jMeterStartup}  ${jmxFileLocation}  ${outputResults}/tc1_justRunJMeter.jtl  


tc2_analyseAndConvertExistingJtlLog
    [Tags]    Performance
    ${result}    analyse Jtl convert    ${outputResults}/tc1_justRunJMeter.jtl
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}
    \    ${check}    Get From Dictionary    ${ELEMENT}    samplesSuccessRateInclAssert
    \    log to console    ${check}
    Should Be Equal As Integers    ${check}    200  
    
    
tc3_runJMeterAndAnalyseAndConvertLog
    [Tags]    Performance
    ${result}    run jmeter analyse jtl convert    ${jMeterStartup}  ${jmxFileLocation}  ${outputResults}/tc3_runJMeterAndAnalyseAndConvertLog.jtl  
    log    ${result}
    :FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}