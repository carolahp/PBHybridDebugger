execution
evaluate: aString andDo: aBlock
	"Treat the current selection as an expression; evaluate it and invoke 
	 aBlock with the result."
	| result evaluationContext interpreter |
	
	evaluationContext := self context doItContext.
	interpreter := evaluationContext evaluator newInterpreter. 
	result := (interpreter initializeWithProgram: (RBParser parseExpression: aString) inContext: evaluationContext) evaluate.
	
	^ aBlock value: result
	