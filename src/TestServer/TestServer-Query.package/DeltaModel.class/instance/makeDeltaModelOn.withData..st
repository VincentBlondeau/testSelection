as yet unclassified
makeDeltaModelOn: aModel withData: rawData
	self generateMooseEntitiesForTestOn: aModel withData: rawData.
	self generateMooseEntitiesForCommitOn: aModel