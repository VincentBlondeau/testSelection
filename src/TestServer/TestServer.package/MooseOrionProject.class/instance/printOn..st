printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< ' (';
		<< self name;
		<< ' ';
		<< self user;
		<< ' '.
	self mseList printOn: aStream.
	aStream << ')'