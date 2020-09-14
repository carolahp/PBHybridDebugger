updating
updateVariablesTable: aDASTContext
	"casting the receiver before asking for variables"
	aDASTContext cast.
	variablesTable items: 
		(aDASTContext allInternVars), aDASTContext allTemps , aDASTContext allInstVars, 
		{#'stack top' -> aDASTContext stackTop}
	