initialization
initialize 	
	
	interpreter initializeWithProgram: (RBParser parseExpression: code).
	super initialize.
	self updateAll.
	