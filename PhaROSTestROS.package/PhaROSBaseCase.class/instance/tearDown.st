setup / teardown
tearDown 

	PhaROSSystem cleanAll.
	process ifNotNil: [ process finalize ].
	process := nil.