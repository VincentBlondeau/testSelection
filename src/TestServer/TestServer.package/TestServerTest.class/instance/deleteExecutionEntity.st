deleting
deleteExecutionEntity
	connection
		execute:
			'DELETE FROM execution_entity WHERE id IN (
SELECT 
  execution_entity.id
FROM 
  public.people, 
  public.execution_entity, 
  public.execution
WHERE 
  execution.id = execution_entity.execution_id AND
  execution.people_id = people.id AND
  people.user_id = ''toto'')'