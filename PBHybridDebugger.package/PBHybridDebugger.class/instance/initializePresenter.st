initialization
initializePresenter
	stepIntoButton action: [ interpreter stepInto . 
									self updateAll ].
	stepOverButton action: [ interpreter stepOver . 
									self updateAll ].
	stepThroughButton action: [ interpreter stepThrough . 
									self updateAll ].
	restartButton action: [ interpreter restart: contextList selectedItem.
									self updateAll ].
	contextList
		whenSelectedItemChanged: [ :selection |
			selection ifNotNil: [ 
				self updateCodeText: selection.
				self updateVariablesTable: selection ]. 
			 ].
	variablesTable widget
		onAnnouncement: FTSelectionChanged send: #variableSelectionChanged to: self. 