computing
numberOfProjectByPersonAvg
	| req nbPeopleByEclipseProject nbEclipseProjectByPeople |
	req := self
		execute:
			'SELECT 
  
  people_duplicates.virtual_id,
  project.name
FROM 
  public.project, 
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
  method.project_id = project.id AND
  virtual_id <> 0 '.
	nbPeopleByEclipseProject := (req asArray asSet groupedBy: [ :e | e second ]) collect: #size.	"-> nb personnes par project Eclipse"
	nbEclipseProjectByPeople := (req asArray asSet groupedBy: [ :e | e first ]) collect: #size.	"-> nb project Eclipse par personne "
	self
		addResultAt: #peopleAndProjects
		summary:
			{(#nbPeopleByEclipseProjectAvg -> (#summary asREval: {(nbPeopleByEclipseProject values)}) asObject).
			(#nbEclipseProjectByPeopleAvg -> (#summary asREval: {(nbEclipseProjectByPeople values)}) asObject).
			(#nbPeopleByEclipseProject -> nbPeopleByEclipseProject).
			(#nbEclipseProjectByPeople -> nbEclipseProjectByPeople)}
		raw: req resultSets 