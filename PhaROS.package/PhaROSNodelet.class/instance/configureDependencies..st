accessing
configureDependencies: aLaunchSpec
	self dependencies do: [: dep | dep value: aLaunchSpec ].
	^ aLaunchSpec 