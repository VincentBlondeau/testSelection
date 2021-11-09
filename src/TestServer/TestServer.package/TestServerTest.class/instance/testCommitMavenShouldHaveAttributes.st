tests
testCommitMavenShouldHaveAttributes
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self jsonOneExec).
	self assert: res equals: #(1) asOrderedCollection.
	res := connection
		execute:
			'SELECT 
  execution.execution_attributes
FROM 
  public.people, 
  public.execution
WHERE 
  people.id = execution.people_id AND
  execution.type = ''maven'' AND
  people.user_id = ''toto'''.
	self assert: res isNotNil.
	self assert: res first data contents isNotNil
	"executionAttributes"