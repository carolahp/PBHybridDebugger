events
variableSelectionChanged
	
	| selectedItem |
	selectedItem := variablesTable widget dataSource elements at: (1 max: variablesTable widget selectedRowIndex).
	selectedItem ifNotNil: [ self updateVariableInspector: selectedItem ]