tests
notATest2
	| baseModel orionModels folder mses partialMooseModel |
	"
	self new notATest2.
	
	"
	folder := 'C:\temp\Bug2' asFileReference.
	mses := folder children select: [ :e | e extension = 'mse' ].
	baseModel := (MooseModel importFromMSEStream: mses first readStream) convertToOrion.
	TimeProfiler 
		spyOn: [ {mses allButFirst first}
				do: [ :mse | 
					partialMooseModel := MooseModel importFromMSEStream: mse readStream.
					self computeDiffWithOrionOn: baseModel and: partialMooseModel filesDeleted: #() ].
			orionModels := baseModel system orionModels ].
	self halt