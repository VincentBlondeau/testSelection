actions
insertUploadedData: request
	| das json |
	das := request at: #id.
	json := request contents.
	^ ';' join: (TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: json))