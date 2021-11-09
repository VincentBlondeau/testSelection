computing
numberOfTestSessionDayByPerson
	| req |
	req := self
		execute:
			'Select avg( number_exec) from (SELECT  
 count(execution.id) number_exec
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
   order by  date_trunc(''day'',start_date)) as temp'.
	self
		addResultAt: #numberOfTestSessionByDayByPerson
		summary: {(#numberOfTestSessionByDayByPersonAvg -> req asArray first first)}
		raw: req resultSets