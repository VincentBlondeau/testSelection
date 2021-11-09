as yet unclassified
serializeModel: req andException: e
	| user project folder stream |
	user := req at: #user.
	project := MooseProjectManager findProjectNamed: (req at: #project) ofUser: user.
	folder := FileLocator workingDirectory / 'Dump' / user / DateAndTime now asFileNameCompatibleString.
	folder ensureCreateDirectory.
	e
		ifNotNil: [ [ stream := (folder / 'stackDump.txt') writeStream.
			e signalerContext errorReportOn: stream ]
				ensure: [ stream ifNotNil: #close ] ].
	project exportMSEsToFolder: folder