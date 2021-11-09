computing
mergeTestSessions
	| rawReq requestData col groupedByTestSession withSameClass sortedList selected noDate withDate |
	self openDBConnection.
	self connectionReadOnly.
	rawReq := self
		execute:
			'SELECT 
			 execution.id,
			virtual_id,
  CONCAT (class.name,''.'', method.name ) as number_of_tests,
class.name,
 method.name,
  project.name,
execution_entity.status,
start_date,
end_date,
duration,
end_date -  start_date
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
	requestData := (rawReq asArray groupedBy: [ :e | e allButLast: 2 ]) values collect: [ :e | e first ].
	self halt.
	col := requestData groupedBy: #second.
	noDate := col
		collect: [ :f | 
			groupedByTestSession := requestData groupedBy: #first.
			withSameClass := groupedByTestSession select: [ :e | (e collect: #fourth as: Set) size = 1 ].
			sortedList := withSameClass values sorted: [ :a :b | a first eighth < b first eighth ].
			collected := sortedList allButLast
				with: sortedList allButFirst
				collect: [ :previous :after | 
					((previous collect: #third) intersection: (after collect: #third))
						ifEmpty: [ 
							{previous.
							after} ]
						ifNotEmpty: [ nil ] ].
			selected := collected select: #isNotNil.
			selected ].
	noDate values sum: #size.	"440"
	withDate := col
		collect: [ :f | 
			groupedByTestSession := f groupedBy: #first.
			withSameClass := groupedByTestSession select: [ :e | (e collect: #fourth as: Set) size = 1 ].
			sortedList := withSameClass values sorted: [ :a :b | a first eighth < b first eighth ].
			collected := sortedList allButLast
				with: sortedList allButFirst
				collect: [ :previous :after | 
					((previous collect: #third) intersection: (after collect: #third))
						ifEmpty: [ 
							(after first at: 8) - (previous first at: 9) < 5 minutes
								ifTrue: [ 
									{previous.
									after} ]
								ifFalse: [ nil ] ]
						ifNotEmpty: [ nil ] ].
			selected := collected select: #isNotNil.
			selected ].
	withDate values sum: #size