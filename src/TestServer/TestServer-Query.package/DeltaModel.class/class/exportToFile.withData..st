as yet unclassified
exportToFile: file withData: toExport
	| stream |
	file ensureDelete.
	stream := file writeStream.
	toExport do: [ :item | stream << item ] separatedBy: [ stream crlf ].
	stream close