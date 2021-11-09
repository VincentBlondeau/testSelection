as yet unclassified
allTestExecutions
	<navigation: 'All test executions'>

	^ MooseTestExecutionGroup withAll: (self flatCollect: #testExecutions)