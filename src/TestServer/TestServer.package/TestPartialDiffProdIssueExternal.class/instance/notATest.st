tests
notATest
	| baseModel orionModels folder mses partialMooseModel |
	"
	self new notATest.
	
	"
	folder := 'C:\temp\Bug' asFileReference.
	mses := folder children select: [ :e | e extension = 'mse' ].
	baseModel := (MooseModel importFromMSEStream: mses first readStream) convertToOrion.
	TimeProfiler
		spyOn: [ mses allButFirst 
				do: [ :mse | 
					partialMooseModel := MooseModel importFromMSEStream: mse readStream.
					self computeDiffWithOrionOn: baseModel and: partialMooseModel filesDeleted: #() ].
			orionModels := baseModel system orionModels ].
	self halt