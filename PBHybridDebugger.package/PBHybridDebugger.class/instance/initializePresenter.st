initialization
initializePresenter 
	stepIntoButton := self newButton.
	stepOverButton := self newButton.
	stepThroughButton := self newButton.
	variablesList := self newList.
	codeText := self newCode.
	contextList := self newList.

	stepOverButton
		icon: (self iconNamed: #glamorousOver);
		label: 'Step Over'.
	
	stepIntoButton
		icon: (self iconNamed: #glamorousInto);
		label: 'Step Into'.
		
	stepThroughButton
		icon: (self iconNamed: #glamorousThrough);
		label: 'Step Through'.
	
	self updateAll