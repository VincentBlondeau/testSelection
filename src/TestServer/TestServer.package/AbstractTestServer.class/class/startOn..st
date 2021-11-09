class initialization
startOn: port 
	self logger
		informational: 'Server Started on ' , port asString , 'Version: ' , self version asString
		facilityLevel: self logFacilityLevel.
	^ self new
		startOn: port