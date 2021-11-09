as yet unclassified
findNearestCommits
	"Detect on OrderedCollection iterates by respecting the order of the collection"

	| res |
	res := ((self people sortedCommits select: [ :commit | self isRepo: commit repository name matches: self project name ])
		groupedBy: [ :e | e repository ]) collect: [ :e | e detect: [ :commit | self end <= commit date ] ifNone: [  ] ].
	res values
		ifEmpty: [ 
			"firstCommitSatisfying := self people sortedCommits
		detect: [ :commit | self end <= commit date and: [ self isRepo: commit repository name matches: self project name ] ]
		ifNone: [ "
			self people sortedCommits
				ifEmpty: [ Transcript crLog: 'no commits for:' , self people asString ]
				ifNotEmpty: [ 
					(#('blfs-mpp-notify-transaction' 'gi2a-gitrepository-2' 'puho' 'online-services-definitions' 'bo-tools-cxf-common' #gispac 'PremUp-root' 'public-holiday' 'ff4j-demo' #gi2a 'online-watcher-fuse')
						includes: self project name)
						ifFalse: [ 
						"	self halt."
							Transcript crLog: self project asString , ' ' , self id asString ] ].
			^ #() ].
	^ res reject: #isNil