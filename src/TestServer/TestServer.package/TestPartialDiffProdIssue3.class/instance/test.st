tests
test
	| baseModel partial1MooseModel orionModels |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel1 readStream.
	self computeDiffWithOrionOn: baseModel and: partial1MooseModel filesDeleted: #().
	orionModels := baseModel system orionModels.
	self assert: baseModel system orionModels last selectTestsFromChanges size equals: 1	"Y a deux version d'un même test mais on garde les deux versions car on ne peut pas les différencier ici mais apres."