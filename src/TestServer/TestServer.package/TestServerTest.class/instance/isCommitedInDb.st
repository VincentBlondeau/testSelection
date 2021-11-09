testing
isCommitedInDb
	| res bag bagMethodsOnly |
	res := connection
		execute:
			'SELECT 
  execution_entity.status, 
  execution_entity.duration,
  execution_entity.method_id, 
  execution_entity.class_id
FROM 
  public.people, 
  public.execution_entity, 
  public.execution
WHERE 
  people.id = execution.people_id AND
  execution_entity.execution_id = execution.id AND
  people.user_id = ''toto'''.
	bag := (res collect: #first) asBag.
	bagMethodsOnly := (res select: [:i | i third isNotNil] thenCollect: #first) asBag.
	self assert: (bag occurrencesOf: 'ERROR') equals: 1.
	self assert: (bag occurrencesOf: 'FAIL') equals: 5.
	self assert: (bagMethodsOnly occurrencesOf: 'PASS') equals: 232.
	^ true