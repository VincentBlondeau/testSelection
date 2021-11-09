adding
addResultAt: aString summary: aSummary raw: rawData
	results
		at: aString
		put:
			(aSummary asDictionary
				"at: 'zz-raw' put: rawData;
				yourself")