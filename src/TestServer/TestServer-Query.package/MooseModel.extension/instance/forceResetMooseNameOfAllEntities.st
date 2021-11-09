*TestServer-Query
forceResetMooseNameOfAllEntities
	self entities do: [ :entity | self resetMooseNameFor: entity ]