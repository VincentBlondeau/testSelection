logging
logConnection: aTeaRequest
	| host |
	host := aTeaRequest headers at: 'Host' ifAbsent: [ 'No host' ].
	(host beginsWith: 'localhost')
		ifFalse: [ self logger
				informational:
					'Up:' , (aTeaRequest headers at: 'Host' ifAbsent: [ 'No host' ]) , '-' , (aTeaRequest headers at: 'id' ifAbsent: [ 'No id' ]) , '-'
						, (aTeaRequest headers at: 'version' ifAbsent: [ '0.0' ])
				facilityLevel: self class logFacilityLevel ]