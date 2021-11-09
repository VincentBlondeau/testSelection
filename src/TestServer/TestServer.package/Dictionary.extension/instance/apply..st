*TestServer
apply: aBlock
	"create a new dictionary where values are the result of the application of the block on the current ones."
	^ (self associations collect: [ :assoc | assoc key -> (aBlock value: assoc value) ]) asDictionary