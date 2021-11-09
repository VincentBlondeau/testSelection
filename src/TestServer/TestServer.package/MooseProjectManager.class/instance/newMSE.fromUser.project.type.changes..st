instance creation
newMSE: mse fromUser: aUserName project: aProject type: aChangeType changes: aColOfChanges
	| project |
	project := self findProjectNamed: aProject ofUser: aUserName.
	^ project addNewMSE: mse type: aChangeType changes: aColOfChanges