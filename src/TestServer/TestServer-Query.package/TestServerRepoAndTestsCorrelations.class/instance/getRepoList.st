as yet unclassified
getRepoList
	| res |
	[ 
	self openDBConnection.
	res := self
		execute:
			'SELECT 
  
  repository.url
FROM 
  public.project, 
  public.people_duplicates, 
  public.execution, 
  public.method, 
  public.class, 
  public.execution_entity, 
  public.project_repository, 
  public.repository
WHERE 
  execution.people_id = people_duplicates.real_id AND
  method.class_id = execution_entity.class_id AND
  method.project_id = project.id AND
  class.project_id = project.id AND
  execution_entity.execution_id = execution.id AND
  execution_entity.class_id = class.id AND
  project_repository.project_id = project.id AND
  repository.id = project_repository.repository_id AND
  virtual_id in (select virtual_id as user_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC)
  Group by project.name, people_duplicates.virtual_id, repository.url
  order by virtual_id ASC;'.
	res halt ]
		ensure: [ self closeDBConnection ]