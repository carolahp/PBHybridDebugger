specs
withCode: someCode temps: aCollection interpreter: aDASTInterpreter
	| temps |
	temps := aCollection
		collect: [ :assoc | 
			assoc key
				->
					(assoc value
						asRemoteObjectInObjectSpace: aDASTInterpreter evaluator objectSpace) ].
	^ self basicNew
		code: someCode;
		temps: temps;
		interpreter: aDASTInterpreter;
		initialize;
		yourself