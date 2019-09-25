initialization
initialize 	
	
	interpreter initializeWithProgram: (RBParser parseExpression: code).
	interpreter stepInto.
	super initialize
	