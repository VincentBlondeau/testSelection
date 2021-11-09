compiling
compileFullAndPartialModelsFrom: aFileReference
	| modelNumber methodName |
	aFileReference children sort
		withIndexDo: [ :fileRef :i | 
			methodName := i = 1
				ifTrue: [ 'fullMse' ]
				ifFalse: [ 'partial' , i asString ].
			self compile: methodName , String cr , '^ ''', (fileRef contents replaceAllRegex: '['']' with: '''''' ),'']