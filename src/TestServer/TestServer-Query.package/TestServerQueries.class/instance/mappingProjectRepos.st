as yet unclassified
mappingProjectRepos
	| projectsRepo |
	projectsRepo := self
		execute:
			'SELECT 
  repository.url, 
  project.name
FROM 
  public.project, 
  public.repository, 
  public.project_repository,
  public.people_duplicates, 
  public.execution, 
  public.method, 
  public.class, 
  public.execution_entity
WHERE 
  execution.people_id = people_duplicates.real_id AND
  repository.id = project_repository.repository_id AND
  project_repository.project_id = project.id AND
  method.class_id = execution_entity.class_id AND
  method.project_id = project.id AND
  class.project_id = project.id AND
  execution_entity.execution_id = execution.id AND
  execution_entity.class_id = class.id AND
  virtual_id in (select virtual_id as user_id 
    from execution, people_duplicates 
    where execution.people_id = people_duplicates.real_id AND virtual_id <> 0 
    group by people_duplicates.virtual_id 
    HAVING count(*) > 1 order by virtual_id ASC)
  Group by repository.url, project.name ;'.
	self flag: 'pour info'	"	self halt"