SQLite format 3   @     4                                                               4 -�r   $ ���$                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �S�tableAssertAssertCREATE TABLE Assert(assertId INTEGER PRIMARY KEY autoincrement, sampleId INTEGER, name TEXT, failure TEXT, failureMsg TEXT, error TEXT, FOREIGN KEY(sampleId) REFERENCES Sample(sampleId))��tableSampleSampleCREATE TABLE Sample(sampleId INTEGER PRIMARY KEY autoincrement, aggId INTEGER, sampleTime INTEGER, respCode INTEGER, respMsg TEXT, threadName TEXT, dataType TEXT, status TEXT, bytes INTEGER, latency INTEGER, FOREIGN KEY(aggId) REFERENCES Aggregated(aggId))�l!!�#tableAggregatedAggregatedCREATE TABLE Aggregated(aggId INTEGER PRIMARY KEY autoincrement, testId INTEGER, label TEXT, samples INTEGER, averageTime REAL, minTime INTEGER, maxTime INTEGER, stDev REAL, error REAL, errorInclAssert REAL, throughput REAL, kbPerSec REAL, avgBytes REAL, median REAL, line90 INTEGER, FOREIGN KEY(testId) REFERENCES Testrun(testId))P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�&�#tableTestrunTestrunCREATE TABLE Testrun(testId INTEGER PRIMARY KEY autoincrement, logFile TEXT, runTime TEXT, samples INTEGER, assertions INTEGER, samplesSuccessRate REAL, samplesSuccessRateInclAssertions REAL, assertionPassRate REAL, averageTime REAL, minTime INTEGER, maxTime INTEGER)   d d                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          � �o3D:/00_Workspace/04_RobotFrameWork/01_Python/RF_E2E_Testing/outputResults/tc3_runJMeterAndAnalyseAndConvertLog.jtl2018-08-26 15:39:25-dd0M�   � ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
Sample-!Aggregated
	Testrun   y �y                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2 	%HTTP Request((��@{      ��*�Q 	IVisit TutorialsPoint Home PagetM �@E@     @G�z�H@oP      �Yc �   -� ���b;���i?���kA���oE���sH
�
�
�
v
L
"	�	�	�	y	O	%���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     (- � �OKUsers 1-4texttrue ��^(, n �OKUsers 1-1texttrue ���(+ 5 �OKUsers 1-5texttrue ��5(* � �OKUsers 1-3texttrue ��x() � �OKUsers 1-6texttrue ��;)( ! �OKUsers 1-10texttrue ��?(' B �OKUsers 1-9texttrue ��L(& � �OKUsers 1-7texttrue ��`(% R �OKUsers 1-8texttrue ��;($ � �OKUsers 1-2texttrue ���(# � �OKUsers 1-1texttrue ��(" E �OKUsers 1-6texttrue ��^(! � �OKUsers 1-7texttrue ��G(  � �OKUsers 1-5texttrue ��@( � �OKUsers 1-4texttrue ��\( * �OKUsers 1-8texttrue ��:) !K �OKUsers 1-10texttrue ��L( � �OKUsers 1-3texttrue ���( � �OKUsers 1-9texttrue ��:(  �OKUsers 1-2texttrue ���( | �OKUsers 1-3texttrue ��x( � �OKUsers 1-5texttrue ��9( � �OKUsers 1-9texttrue ��T( � �OKUsers 1-1texttrue ���( � �OKUsers 1-4texttrue ��H( � �OKUsers 1-6texttrue ��A( e �OKUsers 1-2texttrue ���(  �OKUsers 1-8texttrue ��=(  �OKUsers 1-7texttrue ��L) ! �OKUsers 1-10texttrue ��P( � �OKUsers 1-6texttrue ��b) !� �OKUsers 1-10texttrue ��E( � �OKUsers 1-8texttrue ��4( � �OKUsers 1-5texttrue ��:(  �OKUsers 1-4texttrue ��5(
 � �OKUsers 1-7texttrue ��@(	  �OKUsers 1-9texttrue ��@( i �OKUsers 1-3texttrue ��y( � �OKUsers 1-1texttrue ���( z �OKUsers 1-2texttrue ���% 	X �OKUsers 1-5texttrue �Y.% 	M �OKUsers 1-4texttrue �Y"% 	c �OKUsers 1-3texttrue �Y.% 	y �OKUsers 1-2texttrue �YL' 	 � �OKUsers 1-1texttrue �Y �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              