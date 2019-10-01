specs
defaultSpec
	^SpBoxLayout newVertical
		add:
			(SpBoxLayout newHorizontal
					add: #stepIntoButton;
					add: #stepOverButton;
					add: #stepThroughButton;
					add: #restartButton;
					add: #diveInButton;
					add: #diveOutButton;
					yourself)
		withConstraints: [ :c | c height: self toolbarHeight ];
		
		add: #codeText
			expand: true
			fill: true
			padding: 1;
		
		add: (SpBoxLayout newHorizontal
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
					yourself);
		yourself 