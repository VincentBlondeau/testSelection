as yet unclassified
testComputeDebugSessionThree
	| data expectedNumber res |
	data := #(#(16 'ERROR') #(1 'ERROR') #(1 'PASS') #(1 'ERROR') #(17 'PASS') ).
	expectedNumber := 3.
	res := TestServerQueries  new computeDebugSession: data.
	self assert: res equals: expectedNumber.