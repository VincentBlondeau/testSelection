printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< ' (';
		<< self model mooseName;
		<< ' ';
		<< self type;
		<< ' '.
	self changes printOn: aStream.
	aStream << ')'