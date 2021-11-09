class initialization
startOn: port staticFolder: aFolderName
	self logger informational: 'Server Started on ' , port asString , 'Version: ' , self version facilityLevel: self logFacilityLevel.
	^ self new staticFolder: aFolderName; startOn: port