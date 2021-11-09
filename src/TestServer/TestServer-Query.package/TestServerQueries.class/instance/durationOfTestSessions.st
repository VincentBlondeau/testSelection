computing
durationOfTestSessions
	| req durations |
	self flag: 'not needed'.
	req := self
		execute:
			'SELECT 
  end_date -  start_date
  FROM 
  public.people_duplicates, 
  public.execution
WHERE 
  execution.people_id = people_duplicates.real_id AND
  virtual_id in (select virtual_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC);'.
	durations := req asArray collect: [ :e | e first asTime asDuration ].
	self
		addResultAt: #testSessions
		summary:
			{(#testSessionMean -> durations average).
			(#testSessionMax -> durations max)}
		raw: req resultSets