accessing
connectPresenters
	stepIntoButton action: [ interpreter stepInto . 
									self updateAll ].
	stepOverButton action: [ interpreter stepOver . 
									self updateAll ].
	stepThroughButton action: [ interpreter stepThrough . 
									self updateAll ].
	contextList
		whenSelectionChangedDo: [ :selection | 
			[ :selecteditem | selecteditem ifNotNil: [
				self updateCodeText: selecteditem.
				self updateVariablesTable: selecteditem
				] ] cull: selection selectedItem ].