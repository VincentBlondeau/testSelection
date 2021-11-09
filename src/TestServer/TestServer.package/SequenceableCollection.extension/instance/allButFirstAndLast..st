*TestServer
allButFirstAndLast: n
	"Answer a copy of the receiver containing all but the first n
	elements and the last n elements. Raise an error if there are not enough elements."

	^ self copyFrom: n + 1 to: self size - n