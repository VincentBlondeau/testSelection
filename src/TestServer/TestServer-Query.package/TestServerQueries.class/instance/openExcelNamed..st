exporting
openExcelNamed: aString
	shouldOpenExcel
		ifTrue: [ NBWin32Shell shellOpen: aString ]