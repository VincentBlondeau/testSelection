*TestServer
printHoursMinutesAndSeconds: aStream
	"Format as per: [-]HH:MM:SS[.S]" 	
		| d h m s n |
	d := self days abs.
	h := self hours abs + (d * 24).
	m := self minutes abs.
 	s := self seconds abs truncated.
	n := self nanoSeconds abs. 	
	self negative ifTrue: [ aStream nextPut: $- ].
	h < 10 ifTrue: [ aStream nextPut: $0. ].
	h printOn: aStream. aStream nextPut: $:.
	m < 10 ifTrue: [ aStream nextPut: $0. ].
	m printOn: aStream. aStream nextPut: $:.
	s < 10 ifTrue: [ aStream nextPut: $0. ].
	s printOn: aStream.
	n = 0 ifFalse:
		[ | z ps |
		aStream nextPut: $..
		ps := n printString padLeftTo: 9 with: $0. 
		z := ps findLast: [ :c | c asciiValue > $0 asciiValue ].
		ps from: 1 to: z do: [ :c | aStream nextPut: c ] ].
