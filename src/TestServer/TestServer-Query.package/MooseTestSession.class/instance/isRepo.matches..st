as yet unclassified
isRepo: repoName matches: projectName
	| res |
	res := {(repoName asLowercase = projectName asLowercase).
	(repoName asLowercase includesSubstring: projectName asLowercase).
	(self
		both: repoName
		and: projectName
		includesASubstringIn:
			#('plfr2' #'generic-router' 'bcmc' 'pct-v2' 'stime' 'cams' 'aggregation' 'consentement' 'cdj' 'block' 'facade' 'cxf' 'online-services' #connectors #order #acs #fuse)).
	('pct-v2' = projectName and: [ repoName = 'be-awl-ecs-wlsi-app-pct-v2' ]).
	('pctSimulator' = projectName and: [ repoName = 'be-awl-ecs-wlsi-git-app-pct-v2-simulator' ]).
	('p4-all' = projectName and: [ repoName beginsWith: 'p4' ]).
	('san-imagerie-gitrepository-all' = projectName and: [ repoName beginsWith: 'san-imagerie-gitrepository' ]).
	('ws-teleradio' = projectName and: [ repoName endsWith: 'teleradio' ]).
	(self both: repoName and: projectName beginsWith: 'swira')} includes: true.	"	Transcript crLog: repoName , String tab , projectName , '->' , res asString.	"	"self halt."
	^ res