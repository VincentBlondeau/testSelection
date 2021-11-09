class initialization
initialize
	LoggerInstance := (SLSyslog hostName: TestServerAbstractConnector logAccount host) appName: 'PharoAbstractTest'; 
			procID: OSProcess thisOSProcess pid asString; yourself
