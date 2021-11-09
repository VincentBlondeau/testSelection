as yet unclassified
testComputeDebugSessionTwo
	| data expectedNumber res |
	data := #(#(16 'ERROR') #(1 'ERROR') #(16 'PASS')).
	expectedNumber := 1.
	res := TestServerQueries  new computeDebugSession: data.
	self assert: res equals: expectedNumber.