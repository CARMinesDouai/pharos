phaROS images
phaROSVersionNameToLoad
	| versionToLoad |
	self shouldLoadBleedingEdge
		ifTrue: [ versionToLoad := 'loadBleedingEdgeFromCommander' ]
		ifFalse: [ versionToLoad := 'loadStableFromCommander' ].
	^ versionToLoad