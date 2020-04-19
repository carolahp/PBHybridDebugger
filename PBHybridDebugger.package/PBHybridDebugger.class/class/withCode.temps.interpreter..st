specs
withCode: someCode temps: aCollection interpreter: aDASTInterpreter
	^ self basicNew
		code: someCode;
		temps: aCollection;
		interpreter: aDASTInterpreter;
		initialize;
		yourself