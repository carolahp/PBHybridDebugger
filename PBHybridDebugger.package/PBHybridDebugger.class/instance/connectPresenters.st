accessing
connectPresenters
	stepIntoButton
		action: [ interpreter stepIntoInContext: contextList selection selectedItem.
			self updateAll ].
	stepOverButton
		action: [ interpreter stepOverInContext: contextList selection selectedItem.
			self updateAll ].
	stepThroughButton
		action: [ interpreter stepThroughInContext: contextList selection selectedItem.
			self updateAll ].
	restartButton
		action: [ interpreter restart: contextList selection selectedItem.
			self updateAll ].
	contextList
		whenSelectionChangedDo: [ :selection | 
			[ :selecteditem | 
			selecteditem
				ifNotNil: [ self updateCodeText: selecteditem.
					self updateVariablesTable: selecteditem ] ]
				cull: selection selectedItem ].
	variablesTable
		whenSelectionChangedDo: [ :selection | 
			[ :selecteditem | selecteditem ifNotNil: [ self updateVariableInspector: selecteditem ] ]
				cull: selection selectedItem ]