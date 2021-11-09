logging
initialize
	LoggerInstance := (SLSyslog hostName: TestServerAbstractConnector logAccount host) appName: 'PharoTestSelector'; 
			procID: OSProcess thisOSProcess pid asString; yourself