computing
withDuplicatedProjectsRemoved: aCollectionOfProjects
	"lets considere the same the projects that begin with the same name until -"

	^ aCollectionOfProjects groupedBy: [ :e | self class uniqKeyFor: e ]