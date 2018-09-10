pseudo-dsl
initialize 	
	super initialize.
	self = PhaROSType ifFalse: [
		self registerAlterName.
	]