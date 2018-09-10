*PhaROS
normalizeFrame
	
	^ (self at: 1 ) = $/ ifTrue: [
		self copyFrom: 2 to: self size.	
	   ] ifFalse: [
		self.
	   ].
	