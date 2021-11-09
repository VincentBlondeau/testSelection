accessing
id: req
	^ req headers at: 'id' ifAbsent: [ 'No id' ]