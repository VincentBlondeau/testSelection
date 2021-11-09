public
startOn: port
	teapot := Teapot
		configure:
			{(#port -> port).
			(#debugMode -> self class isDebug).
			(#maximumEntitySize -> (100 * 1024 * 1024))}