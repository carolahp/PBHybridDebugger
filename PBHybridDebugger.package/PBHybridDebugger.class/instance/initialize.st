initialization
initialize 	
	
	interpreter initializeWithProgram: (RBParser parseExpression: code) withTemps: temps.
	super initialize.
	self updateAll.
	