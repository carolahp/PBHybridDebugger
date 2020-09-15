updating
updateContextsList
	contextList items: (interpreter contextsStack collect: #cast).
	contextList selectIndex: 1.
	contextList update