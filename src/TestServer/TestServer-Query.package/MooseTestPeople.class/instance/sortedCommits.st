as yet unclassified
sortedCommits
	<MSEProperty: #sortedCommits type: #SYNCommit>
	^ self commits asOrderedCollection sort: [ :a :b | a date < b date ]