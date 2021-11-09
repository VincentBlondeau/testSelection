as yet unclassified
selectChangesAndTestsFromVerifiedTestSessions: aCollection
	| commitsAndParents commit repo parents dico |
	^ aCollection
		flatCollect: [ :e | 
			commitsAndParents := e at: #commitsAndParents.
			e at: #decomposedChanges put: OrderedCollection new.
			commitsAndParents
				flatCollect: [ :assoc | 
					commit := assoc key.
					repo := commit repository.
					parents := assoc value.
					parents
						collect: [ :parentCommit | 
							dico := {(#repo -> repo).
							(#commitBefore -> parentCommit).
							(#commitAfter -> commit)} asDictionary.
							(e at: #decomposedChanges) add: dico.
							dico ] ] ]