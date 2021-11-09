deleting
deleteExecution
	connection
		execute:
			'DELETE FROM execution WHERE id IN (
SELECT 
  execution.id
FROM 
  public.people, 
  public.execution
WHERE 
  execution.people_id = people.id AND
  people.user_id = ''toto'')'