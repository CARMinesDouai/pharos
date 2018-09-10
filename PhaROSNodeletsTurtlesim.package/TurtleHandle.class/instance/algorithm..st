control
algorithm: aBlock
	processHandler ifNotNil:[
		processHandler finalize.
	].

	 processHandler := [aBlock cull: self cull: turtlesimNodelet ] shootIt asStickyReference.