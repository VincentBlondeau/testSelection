computing
descriptiveStats
	| requestData testByProjectSet testByProjectBag testDurationData testSessionDurationData numberOfTestSessionsData kindOfTest nbOfUniqueFailingTests rawReq stream writter |
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
	[ 
	stream := 'c:\tmptmp\exportDecData.csv' asFileReference writeStream.
	writter := (NeoCSVWriter on: stream)
		separator: $;;
		nextPut: #(#exec_id #user_id #testName #project #testStatus #start_date #end_date #duration);
		yourself.
	writter nextPutAll: requestData ]
		ensure: [ stream close ].
	testByProjectSet := ((requestData groupedBy: #second) associations
		collect: [ :assoc | assoc key -> (assoc value collect: [ :item | item first ] as: Set) ]) asDictionary.
	testByProjectBag := ((requestData groupedBy: #second) associations
		collect: [ :assoc | assoc key -> (assoc value collect: [ :item | item first ] as: Bag) ]) asDictionary.	"self
		exportToCsvFile: self exportFolder / 'testByProject.csv'
		headers: #(#exec_id #user_id #testName #project #testStatus #start_date #end_date #duration)
		data: requestData ."
	testDurationData := requestData collect: #eighth thenSelect: [ :e | e >= 0 ].
	testSessionDurationData := ((requestData groupedBy: #first) collect: [ :c | c first ninth asTime asDuration asSeconds ])
		values.
	self correlationWithDuration: requestData.
	numberOfTestSessionsData := requestData groupedBy: #first.
	nbOfUniqueFailingTests := ((requestData select: [ :e | #('FAIL' 'ERROR') includes: e fifth ])
		collect: [ :e | e third ]
		as: Set) size.
	kindOfTest := requestData collect: #fifth as: Bag.
	self
		addResultAt: #descriptiveStats
		summary:
			{(#testDurationInSecs -> (#summary asREvalToSt: {testDurationData})).
			(#ratioTestsSessionLongerThan1Min
				-> ((testSessionDurationData sum: [ :x | (x > 60) asBit ]) / testSessionDurationData size asFloat)).
			(#ratioTestsSessionLongerThan2Min
				-> ((testSessionDurationData sum: [ :x | (x > 120) asBit ]) / testSessionDurationData size asFloat)).
			(#'TABLEII-testSessionDurationInSeconds' -> (#summary asREvalToSt: {testSessionDurationData})).
			(#'TABLEII-nbTestsByTestSession'
				-> (#summary asREvalToSt: {(((requestData groupedBy: #first) collect: #size) values)})).
			(#kindOfTest -> kindOfTest).
			(#'RQ2.1-ratioOfFails'
				-> (((kindOfTest occurrencesOf: 'FAIL') + (kindOfTest occurrencesOf: 'ERROR')) / kindOfTest size asFloat)).
			(#'RQ2.1-nbOfFailingTests' -> ((kindOfTest occurrencesOf: 'FAIL') + (kindOfTest occurrencesOf: 'ERROR'))).
			(#nbOfUniqueFailingTests -> nbOfUniqueFailingTests).
			(#'RQ2.1-ratioOfPasses' -> ((kindOfTest occurrencesOf: 'PASS') / kindOfTest size asFloat)).	"	(#'RQ2.1-nbOfPassing' -> (kindOfTest occurrencesOf: 'PASS') size asFloat)."
			(#numberOfTestExectutions -> requestData size).
			(#numberOfTestSessions -> numberOfTestSessionsData size).
			(#numberOfSingleTestSession -> (numberOfTestSessionsData count: [ :e | e size = 1 ])).
			(#ratioOfSingleTestSession
				-> ((numberOfTestSessionsData count: [ :e | e size = 1 ]) / numberOfTestSessionsData size asFloat))}
		raw: requestData.
	self writeAndOpenDescriptiveStatsByProject: requestData.
	self testByDayExport: requestData.
	self computeDelayToFixTest: requestData.
	self inspect: requestData.
	self
		addResultAt: #rawData
		summary:
			{(#data -> requestData).
			(#dataWithCommitId -> self dataWithCommitId)}
		raw: nil.
	self
		addResultAt: #testByProject
		summary:
			{(#nbTestByProjectAvg -> (testByProjectSet values collect: #size) average asFloat).
			(#nbTestByProjectMax -> (testByProjectSet values collect: #size) max asFloat).
			(#testByProjectBag -> testByProjectBag).
			(#testByProjectSet -> testByProjectSet).
			(#data -> requestData)}
		raw: requestData