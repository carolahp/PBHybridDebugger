initialization
initializePresenter
	stepIntoButton := self newButton.
	stepOverButton := self newButton.
	stepThroughButton := self newButton.
	variablesTable := self newTable.
	codeText := self newCode.
	contextList := self newList.
	
	variablesTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #key);
		addColumn: (SpStringTableColumn title: 'Value' evaluated: #value);
		beResizable.
	
	"variablesList
		display: [ :item | item key ];
		contextMenu:
			(self newMenu
				addItem: [ :item | 
					item
						name: 'Inspect';
						icon: (self iconNamed: #smallHelp);
						action: [ variablesList selection selectedItem inspect ] ];
				yourself)."
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