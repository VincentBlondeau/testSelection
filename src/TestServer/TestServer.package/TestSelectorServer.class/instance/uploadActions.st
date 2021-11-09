actions
uploadActions
	^ [ :req | 
	| user |
	user := req at: #user.
	[ [ [ self logger debug: user , 'New request' facilityLevel: self class logFacilityLevel.
	self importMSEFrom: req.
	TeaResponse created body: return ]
		on: GAError
		do: [ :e | 
			self logger warning: user , '-Transaction Rollbacked-: ' , e asString facilityLevel: self class logFacilityLevel.
			TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
		on: MSENotFound
		do: [ :e | 
			self logger warning: user , '-Full MSE file not existing.. Please create a new one.' facilityLevel: self class logFacilityLevel.
			TeaResponse resetContent body: 'Full MSE not existing. Please reset!' ] ]
		on: Error
		do: [ :e | 
			self logger alert: user , '-Oops something did wrong...-: ' , e asString facilityLevel: self class logFacilityLevel.
			self serializeModel: req andException: e.
			MooseProjectManager resetProject: (req at: #project) fromUser: user.
			TeaResponse badRequest body: 'Houston, we have a problem!' , e asString ] ]