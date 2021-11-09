tests
test
	| baseModel partial1MooseModel partial2MooseModel orionModels |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel1 readStream.
	partial2MooseModel := MooseModel importFromMSEStream: self partialModel2 readStream.
	self computeDiffWithOrionOn: baseModel and: partial1MooseModel filesDeleted: #('TestProjet/src/com/toto/C.java').
	self computeDiffWithOrionOn: baseModel and: partial2MooseModel filesDeleted: #('TestProjet/src/com/toto/A.java').
	orionModels := baseModel system orionModels.
	self assert: baseModel system orionModels last selectTestsFromChanges size equals: 3	"Y a deux version d'un même test mais on garde les deux version car on ne peut pas les différencier ici mais apres."