updating
updateVariablesTable: aDASTContext
	
	variablesTable widget dataSource 
		elements: aDASTContext allInternVars, aDASTContext allTemps , aDASTContext allInstVars.
	variablesTable widget refresh