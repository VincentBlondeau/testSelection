exporting
exportToCsvFile: aFileReference headers: header data: data
	| stream writter values |
	[ stream := aFileReference writeStream.
	writter := (NeoCSVWriter on: stream)
		separator: $;;
		nextPut: header;
		yourself.
	writter nextPutAll: data ]
		ensure: [ stream close ]