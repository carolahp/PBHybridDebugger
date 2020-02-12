private
codeCommandGroup
	| group |
	group := CmCommandGroup forSpec
		beDisplayedAsGroup;
		yourself.
	self flag: #TODO. "This needs to be discoverable (otherwise is not extensible)
	ot at least, we need to add a plug for extensions"
	{ 	
		"SpNonCompiledCodeDoItCommand." 
		"SpNonCompiledCodePrintItCommand. 
		SpNonCompiledCodeInspectItCommand. 
		SpCodeDebugItCommand. 
		SpCodeProfileItCommand.
		SpCodeBrowseItCommand."
	} do: [ :eachClass | 
		group register: (eachClass forSpecContext: self) ].

	^ group