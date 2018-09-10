*PhaROS
normalizeParameterName
		| normalizedName  |
	normalizedName := self.
	
	normalizedName first = $/ ifFalse: [ 
		normalizedName := '/', normalizedName.
	].
	normalizedName last = $/ ifFalse: [ 
		normalizedName := normalizedName, '/'.	
	 ].
	[ (normalizedName indexOf:'//') = 0] whileFalse: [ normalizedName := normalizedName copyReplaceAll: '//' with: '/'  ].

	^ normalizedName.