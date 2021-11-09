adding
addNewMSE: mse fromUser: aUserName project: aProject type: aChangeType changes: aColOfChanges
	^ self instance
		newMSE: mse
		fromUser: aUserName
		project: aProject
		type: aChangeType
		changes: aColOfChanges