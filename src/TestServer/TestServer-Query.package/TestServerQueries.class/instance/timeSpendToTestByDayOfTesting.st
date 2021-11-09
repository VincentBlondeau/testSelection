computing
timeSpendToTestByDayOfTesting
	| req groupedByPeople groupedByDay values byDayAndByPeople |
	req := self
		execute:
			'SELECT  
  date_trunc(''day'',start_date),
  to_char(start_date, ''day''),
  sum(end_date - start_date),
  virtual_id
FROM 
  public.people_duplicates, 
  public.execution
WHERE 
  execution.people_id = people_duplicates.real_id AND
  virtual_id in (select virtual_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC)
   group by date_trunc(''day'',start_date),to_char(start_date, ''day''), virtual_id
   order by  date_trunc(''day'',start_date)'.
	groupedByPeople := ((req groupedBy: #fourth) associations collect: [ :assoc | assoc key -> (assoc value sum: [ :item | item third asTime asDuration ]) ]) asDictionary.
	groupedByDay := ((req groupedBy: #first) associations collect: [ :assoc | assoc key -> (assoc value sum: [ :item | item third asTime asDuration ]) ]) asDictionary.
	byDayAndByPeople := req collect: [ :item | item third asTime asDuration ].
	self
		addResultAt: #sessionDuration
		summary:
			{(#timeSpentToTestByDay -> groupedByDay values average).
			(#timeSpentToTestByPeople -> groupedByPeople values average).
			(#timeSpentToTestByPeopleByDay -> byDayAndByPeople average)}
		raw: req resultSets