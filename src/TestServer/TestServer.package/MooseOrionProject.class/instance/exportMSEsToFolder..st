exporting
exportMSEsToFolder: aFileReference
	self mseList
		withIndexDo: [ :mseFile :index | 
			| stream |
			[ stream := (aFileReference / (index asString , '.mse')) writeStream.
			stream << mseFile mse ]
				ensure: [ stream ifNotNil: #close ].
			[ stream := (aFileReference / (index asString , '.fileChanged.txt')) writeStream.
			mseFile removeChanges do: [ :string | stream << string ] separatedBy: [ stream crlf ] ]
				ensure: [ stream ifNotNil: #close ] ]