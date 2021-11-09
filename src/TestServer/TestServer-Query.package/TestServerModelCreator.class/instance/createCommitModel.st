as yet unclassified
createCommitModel
	| baseDir converter streams importer |
	SYNAuthor initialize.
	SYNFile initialize.
	Smalltalk at: #RealStreamActivated put: false.	"still used?"
	self assert: model class = MooseModel.
	baseDir := 'D:\repoMooseSdco\Tests\RepoExtracts\v42017' asFileReference.
	converter := TextConverter newForEncoding: #'cp-1252'.
	[ 
	streams := baseDir children
		select: [ :fileRef | fileRef size ~= 0 ]
		thenCollect: [ :fileRef | 
			fileRef readStream
				converter: converter;
				yourself ].
	importer := SYNVCSImporter new
		model: model;
		parser: GitLogImporter new;
		yourself.
	importer runOnAll: streams ]
		ensure: [ streams do: #close ].
	self class enhanceAuthorsWithID: model allAuthors