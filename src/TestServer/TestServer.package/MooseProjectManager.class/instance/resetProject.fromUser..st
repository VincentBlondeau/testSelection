as yet unclassified
resetProject: projectName fromUser: userName
	1 yourself.	"bug on temp mapping..."
	projects removeAllSuchThat: [ :project | project user = userName and: [ project name = projectName ] ]