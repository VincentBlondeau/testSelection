accessing
fetchDataForModel
	| rawReq |
	rawReq := self
		execute:
			'SELECT 
			 execution.id,
			virtual_id, 	
  CONCAT (class.name,''.'', method.name ) as number_of_tests,
  project.name,
execution_entity.status,
start_date,
end_date,
duration,
end_date -  start_date,
method.version_number
FROM 
  public.people, 
  public.people_duplicates, 
  public.execution, 
  public.execution_entity, 
  public.method, 
  public.project,
   public.class
WHERE 
class.id = method.class_id AND
  people.id = people_duplicates.real_id AND
  execution.people_id = people.id AND
  execution_entity.execution_id = execution.id AND
  execution_entity.method_id = method.id AND
  project.id = method.project_id AND
 virtual_id in (select virtual_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC);'.
	^ (rawReq asArray groupedBy: [ :e | e allButLast: 3 ]) values collect: [ :e | e first ]	"remove duplicates"