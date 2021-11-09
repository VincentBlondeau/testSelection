tests
notATest3
	| baseModel orionModels folder mses partialMooseModel |
	"
	self new notATest3.
	
	"
	folder := 'C:\temp\Bug3' asFileReference.
	mses := folder children select: [ :e | e extension = 'mse' ].
	baseModel := (MooseModel importFromMSEStream: mses first readStream) convertToOrion.
	TimeProfiler 
		spyOn: [ mses allButFirst
				do: [ :mse | 
					partialMooseModel := MooseModel importFromMSEStream: mse readStream.
					self computeDiffWithOrionOn: baseModel and: partialMooseModel filesDeleted: #() ].
			orionModels := baseModel system orionModels ].
	self halt