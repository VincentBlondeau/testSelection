as yet unclassified
transformDaysInHours: aCollection
	^ aCollection
		collect: [ :e | 
			| stream |
			stream := WriteStream on: ''.
			e printHoursMinutesAndSeconds: stream.
			stream contents ]