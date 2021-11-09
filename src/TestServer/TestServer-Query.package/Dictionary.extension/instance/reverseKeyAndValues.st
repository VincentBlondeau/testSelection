*TestServer-Query
reverseKeyAndValues
	"do not work if values are not unique"
	^ (self associations collect: [ :association | association value -> association key ]) asDictionary 