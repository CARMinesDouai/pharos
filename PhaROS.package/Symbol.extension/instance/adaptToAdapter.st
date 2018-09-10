*PhaROS
adaptToAdapter 
	^ (self at:1) isLowercase ifTrue: [
		PhaROSFilter for: self.	
	] ifFalse: [
		PhaROSConverter convertTo: (Smalltalk at: self ifAbsent: [ self error: ' The target class does not exist']).
	].