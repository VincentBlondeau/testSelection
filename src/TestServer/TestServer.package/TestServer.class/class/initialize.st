accessing
initialize
	LoggerInstance := (SLSyslog hostName: TestServerAbstractConnector logAccount host) appName: 'PharoTestRecorder'; 
			procID: OSProcess thisOSProcess pid asString; yourself