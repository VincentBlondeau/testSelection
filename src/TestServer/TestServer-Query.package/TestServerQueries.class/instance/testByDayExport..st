computing
testByDayExport: rawData
	| groupedByProjects nbTestsLaunchedByProjectByDay data fileName |
	groupedByProjects := rawData groupedBy: [ :e | TestServerQueries uniqKeyFor: e fourth ].
	nbTestsLaunchedByProjectByDay := groupedByProjects
		collect: [ :e | 
			(e groupedBy: [ :f | f sixth asDate yyyymmdd ])
				collect: [ :f | 
					{(f first sixth dayOfWeekName).
					(f size)} ] ].
	nbTestsLaunchedByProjectByDay collect: [ :e | OrderedDictionary newFrom: e associations ].
	data := nbTestsLaunchedByProjectByDay associations
		flatCollect: [ :assoc | 
			assoc value associations
				collect: [ :assoc2 | 
					{(assoc2 key).
					(assoc key)} asOrderedCollection
						addAll: assoc2 value;
						yourself ] ].
	fileName := TestServerQueries new exportFolder / 'exportByDay' , Count asString , '.csv'.
	self exportToCsvFile: fileName headers: #(#date #projectName #dayname #numberOfTestSession) data: data.
	self openExcelNamed: fileName fullName.
	self addResultAt: #testByDay summary: {(#nbTestByProjectAvg -> 'cf excelfile')} raw: rawData