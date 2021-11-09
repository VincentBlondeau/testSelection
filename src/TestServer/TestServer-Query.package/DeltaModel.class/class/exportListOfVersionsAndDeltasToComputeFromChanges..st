as yet unclassified
exportListOfVersionsAndDeltasToComputeFromChanges: changesToExport
	| flatRevs toExport |
	flatRevs := changesToExport
		flatCollect: [ :e | 
			{(':'
				join:
					{((e at: #repo) name).
					((e at: #commitBefore) revision)}).
			(':'
				join:
					{((e at: #repo) name).
					((e at: #commitAfter) revision)})} ].
	toExport := flatRevs asSet asOrderedCollection sort.
	self exportToFile: 'D:\TestsExperiements\reposGitKazan\versionList.txt' asFileReference withData: toExport.
	toExport := (changesToExport
		collect: [ :e | 
			':'
				join:
					{((e at: #repo) name).
					((e at: #commitBefore) revision).
					((e at: #commitAfter) revision)} ]) asSet asOrderedCollection sort.
	self exportToFile: 'D:\TestsExperiements\reposGitKazan\deltasToComputeList.txt' asFileReference withData: toExport