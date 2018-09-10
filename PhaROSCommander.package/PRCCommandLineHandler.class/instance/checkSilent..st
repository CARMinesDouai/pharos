validation
checkSilent: aBoolean
	^ self checkBoolean: aBoolean ifFail: [ 
		 self exitFailure: aBoolean asString, ' is not a valid value for --silent. It should be true or false'.
	].
	
	 