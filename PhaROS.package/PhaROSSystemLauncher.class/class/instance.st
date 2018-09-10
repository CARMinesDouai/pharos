accessing
instance
	^ instance ifNil: [
		instance := super new.	
	]