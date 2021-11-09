as yet unclassified
createCommitsAndSessionGroupsForProject: aMooseProject
	| groups previous res |
	groups := self groupCommitsAndSessionForProject: aMooseProject.
	previous := nil.
	^ groups
		collect: [ :group | 
			res := group first class = SYNCommit
				ifTrue: [ 
					(MooseTestCommitGroup withAll: group)
						previous: previous;
						yourself ]
				ifFalse: [ 
					(MooseTestSessionGroup withAll: group)
						previous: previous;
						yourself ].
			previous := res.
			res ]