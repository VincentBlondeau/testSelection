as yet unclassified
computeVerifiedTestSession: aCollectionOfGroupsOfTestSessions
	| acc verifiedTestGroup commits commitsAndParents testsGroupedByVersion foundTests count res maxDateTests minDateCommits parents |
	count := 0.
	res := aCollectionOfGroupsOfTestSessions
		collect: [ :groupOfTestSessions | 
			acc := OrderedCollection new.
			groupOfTestSessions
				linksDo: [ :doubleLink | 
					verifiedTestGroup := doubleLink value.
					(verifiedTestGroup anySatisfy: #isCommit)
						ifTrue: [ 
							count := count + 1.
							commits := verifiedTestGroup select: #isCommit.
							commitsAndParents := self searchForPreviousCommitsOf: commits.
							parents := commitsAndParents flatCollect: #value.
							foundTests := (doubleLink
								reverseCollect: [ :commitGroup | 
									testsGroupedByVersion := (commitGroup reject: #isCommit) groupedBy: #versionTestedString.
									maxDateTests := commitGroup max: #date.
									minDateCommits := (commitsAndParents flatCollect: #value) min: #date.
									maxDateTests > minDateCommits
										ifTrue: [ 
											((parents collect: #revision) includesAll: testsGroupedByVersion keys)
												ifTrue: [ 
													commitsAndParents
														flatCollect: [ :assoc | assoc value flatCollect: [ :parentCommit | testsGroupedByVersion at: parentCommit revision ifAbsent: [ #() ] ] ] ]
												ifFalse: [ {-1} ] ]
										ifFalse: [ #() ] ]) asArray flatten.	"untilTrue: [ :commitGroup | 
									maxDateTests := commitGroup max: #date.
									minDateCommits := (commitsAndParents flatCollect: #value) min: #date.
									maxDateTests > minDateCommits ]"
							acc
								add:
									{(#verifiedTestGroup -> verifiedTestGroup).
									(#commitsAndParents -> commitsAndParents).
									(#otherFoundTests -> foundTests)} asDictionary ]	"alors c'est une assoc test / commit" ].
			acc ].
	^ res