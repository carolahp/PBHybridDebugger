specs
withInterpreter: anInterpreter

	^ self basicNew 
		interpreter: anInterpreter;
		initialize;
		yourself.
	