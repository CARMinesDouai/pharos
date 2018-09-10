as yet unclassified
errorCallbacksFor: anError

	^ errors at: anError ifAbsent: [ 
		anError = Exception ifTrue: [ 
			Set new 
		] ifFalse: [ 
			self errorCallbacksFor: anError superclass.
		 ]
	 ].