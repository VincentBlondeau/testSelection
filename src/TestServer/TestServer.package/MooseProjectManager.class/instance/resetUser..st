as yet unclassified
resetUser: userName
	1 yourself.	"bug on temp mapping..."
	projects removeAllSuchThat: [ :project | project user = userName ]