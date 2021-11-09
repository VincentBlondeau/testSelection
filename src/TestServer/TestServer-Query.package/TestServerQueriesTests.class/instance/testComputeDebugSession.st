as yet unclassified
testComputeDebugSession
	| data expectedNumber res |
	data := #(#(16 'ERROR') #(16 'ERROR') #(16 'ERROR') #(17 'PASS') #(17 'PASS') #(17 'PASS')).
	expectedNumber := 0.
	res := TestServerQueries  new computeDebugSession: data.
	self assert: res equals: expectedNumber.