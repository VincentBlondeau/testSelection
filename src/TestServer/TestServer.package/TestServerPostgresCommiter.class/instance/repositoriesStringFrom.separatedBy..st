as yet unclassified
repositoriesStringFrom: aCollectionOfRepositories separatedBy: aString
	^ String
		streamContents:
			[ :stream | 
			aCollectionOfRepositories
				do: [ :aRepo | 
					stream nextPut: $'.
					stream << aRepo.
					stream nextPut: $' ]
				separatedBy: [ stream nextPutAll: aString ] ]