actions
uploadActions
	| res path |
	^ [ :req | 
	[ [ [ self logger debug: 'New request from ' , (self id: req) facilityLevel: self class logFacilityLevel.
	req contents ifNil: [ self error: 'Contents is nil... Detail:' , req asString ].
	self serializeJson: req contents.
	res := self insertUploadedData: req.
	self logger debug: 'Response:' , res facilityLevel: self class logFacilityLevel.
	TeaResponse created body: res ]
		on: TSMalformedJsonInput
		do: [ :e | 
			path := self serializeJson: req contents.
			self logger error: 'Bad JSon request-' , (self id: req) , '- See: ' , path asString facilityLevel: self class logFacilityLevel.
			TeaResponse badRequest body: 'Malformed Json' , e asString ] ]
		on: GAError
		do: [ :e | 
			self logger warning: 'Transaction Rollbacked-' , (self id: req) , '-: ' , e asString facilityLevel: self class logFacilityLevel.
			TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
		on: Error
		do: [ :e | 
			self logger
				critical: 'Oops something did wrong... -' , (self id: req) , '-: ' , e asString , e signalerContext stack printString
				facilityLevel: self class logFacilityLevel.
			TeaResponse badRequest body: 'Houston, we have a problem!' , e asString ] ]