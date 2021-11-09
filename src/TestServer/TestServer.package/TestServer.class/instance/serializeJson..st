logging
serializeJson: aJsonString
	| dir file stream wantedFile |
	dir := (FileSystem workingDirectory / 'jsonLog') ensureCreateDirectory.
	wantedFile := dir / 'jsonData' , DateAndTime now asFileNameCompatibleString , '.txt'.
	file := wantedFile exists
		ifFalse: [ wantedFile ensureCreateFile ]
		ifTrue: [ fileCount := fileCount + 1.
			(wantedFile parent /( wantedFile basenameWithoutExtension , fileCount asString,'.txt')) ensureCreateFile ].
	[ stream := file writeStream << (NeoJSONWriter toStringPretty: (NeoJSONReader fromString: aJsonString)) ]
		ensure: [ stream ifNotNil: #close ].
	^ file fullName