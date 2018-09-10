validation
checkLocation: aLocation 
	
	^( aLocation exists and: [ 
		self isAValidCatkinWorkspace: aLocation.
	]) ifTrue:[ 
		aLocation 
	] ifFalse: [ 
		self exitFailure: aLocation pathString , ' is not a valid catkin workspace'
	] .