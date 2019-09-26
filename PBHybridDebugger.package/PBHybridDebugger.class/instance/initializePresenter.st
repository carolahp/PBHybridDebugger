initialization
initializePresenter
	stepIntoButton := self newButton.
	stepOverButton := self newButton.
	stepThroughButton := self newButton.
	restartButton := self newButton.
	variablesTable := self newTable.
	codeText := self newNonCompiledCode.
	contextList := self newList.
	variableInspector := self newText.
	
	variablesTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #key);
		addColumn: (SpStringTableColumn title: 'Value' evaluated: #value);
		beResizable;
		contextMenu:
			(self newMenu
				addItem: [ :item | 
					item
						name: 'Inspect';
						icon: (self iconNamed: #smallHelp);
						action: [ variablesTable selection selectedItem value inspect ] ];
				yourself).
				
	contextList
		display: [ :item | item ];
		contextMenu:
			(self newMenu
				addItem: [ :item | 
					item
						name: 'Inspect';
						icon: (self iconNamed: #smallHelp);
						action: [ contextList selection selectedItem inspect ] ];
				yourself).
				
	stepOverButton
		icon: (self iconNamed: #glamorousOver);
		label: 'Step Over'.
	stepIntoButton
		icon: (self iconNamed: #glamorousInto);
		label: 'Step Into'.
	stepThroughButton
		icon: (self iconNamed: #glamorousThrough);
		label: 'Step Through'.
	restartButton
		icon: (self iconNamed: #glamorousRefresh);
		label: 'Restart'.
	