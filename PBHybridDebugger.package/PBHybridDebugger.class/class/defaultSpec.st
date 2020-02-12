specs
defaultSpec
	^SpecLayout composed
		newColumn: [ :col | 
		col 
			newRow: [:row | 
				row
					add: #stepIntoButton;
					add: #stepOverButton;
					add: #stepThroughButton;
					add: #restartButton;
					add: #diveInButton;
					add: #diveOutButton ] height: self toolbarHeight;
			newRow: [ :row |
				row 
					add: #contextList;
					add: #codeText ];
			newRow: [ :row |
				row 
					add: #variablesTable;
					add: #variableInspector]]; yourself
					
					
							
		
		"add: (SpecLayout horizontal
					add: #contextList
					expand: true
					fill: true
					padding: 1;
	
					add: #variablesTable
					expand: true
					fill: true
					padding: 1;
					
					add: #variableInspector
					expand: true
					fill: true
					padding: 1
					yourself);"  