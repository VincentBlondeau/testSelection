*TestServer-Query
sumDurationByProject
	^ self allGroupedProjectsByEntity collect: [ :project | project sumOfAllUniqTestDuration ]