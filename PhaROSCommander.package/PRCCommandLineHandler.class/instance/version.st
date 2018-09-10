resolving
version
	
	^ self checkVersion: (self optionAt: #version ifAbsent: [ 'stable' ]).