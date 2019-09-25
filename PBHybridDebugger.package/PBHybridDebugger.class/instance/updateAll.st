updating
updateAll
	contextList items: interpreter contextsStack.
	contextList selectItem: 1.
	contextList update.
	self updateVariablesList.
	self updateCodeText