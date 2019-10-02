baselines
baseline: spec
	<baseline>
	spec for: #common do: [
		"spec baseline: 'PharoBootstrapProcess'."
		
		"Dependencies"
		"spec baseline: 'Spec2'
			with: [ spec repository: 'github://pharo-spec/Spec']."
		
		spec 
			package: 'PBHybridDebugger'
	]
