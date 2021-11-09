as yet unclassified
findNearestCommit
	"Detect on OrderedCollection iterates by respecting the order of the collection"

	^ self people sortedCommits detect: [ :commit | self end < commit date ]