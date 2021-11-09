computing
testsBySession
	| req numberOfTestByTestSession |
	req := self
		execute:
			'SELECT 
  execution.id AS execution, 
  count(distinct(execution_entity.status,  execution_entity.method_id, execution_entity.execution_id)) as numberOfEntity,
	virtual_id
FROM 
  public.people, 
  public.people_duplicates, 
  public.execution, 
  public.execution_entity, 
  public.method
WHERE 
  people.id = people_duplicates.real_id AND
  execution.people_id = people.id AND
  execution_entity.execution_id = execution.id AND
  execution_entity.method_id = method.id AND 
  virtual_id in (select virtual_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC)
 group by  execution.id, virtual_id'.
	numberOfTestByTestSession := req asArray collect: [ :e | e second ] as: Bag.
	self
		addResultAt: #testSessionAndNumberOfTests
		summary:
			{(#numberOfTestByTestSessionAvg -> numberOfTestByTestSession average asFloat).
			(#numberOfTestByTestSessionMax -> numberOfTestByTestSession max asFloat).
			(#numberOfTestByTestSessionBag -> numberOfTestByTestSession).
			(#'RQ1.4-ratioOfTestSessionGreaterThan5'
				-> ((numberOfTestByTestSession sum: [ :x | (x > 5) asBit ]) / numberOfTestByTestSession size asFloat)).
			(#'RQ1.4-ratioOfTestSessionGreaterThan50'
				-> ((numberOfTestByTestSession sum: [ :x | (x > 50) asBit ]) / numberOfTestByTestSession size asFloat))}
		raw: req resultSets