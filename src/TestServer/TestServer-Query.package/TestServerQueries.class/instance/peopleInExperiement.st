computing
peopleInExperiement
	" nb de personnes"

	| people |
	people := self
		execute:
			'select virtual_id as user_id, count(*) as count_number 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC;'.
	self addResultAt: #people summary: {(#numberOfPeople -> people rows size)} raw: people resultSets