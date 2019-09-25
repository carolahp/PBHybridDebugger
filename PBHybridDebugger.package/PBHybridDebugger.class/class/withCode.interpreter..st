specs
withCode: someCode interpreter: aDASTInterpreter
	^ self basicNew
		code: someCode;
		interpreter: aDASTInterpreter;
		initialize;
		yourself