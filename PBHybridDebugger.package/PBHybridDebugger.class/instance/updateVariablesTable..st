updating
updateVariablesTable: aDASTContext

	variablesTable items: 
		(aDASTContext allInternVars), aDASTContext allTemps , aDASTContext allInstVars, 
		{#'stack top' -> aDASTContext stackTop}
	