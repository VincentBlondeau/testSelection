as yet unclassified
loadCompleteProjectInMemory
	"On fait le cas simple où il tout est chargé en mémoire tout le temps. On verra les problemes apres..."

	self model ifNil: [ self importFullMse: self fullMse ] ifNotNil: [ self importPartialMse: self lastMse ]