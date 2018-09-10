generating - types
deployType:  aDefinition
	
	| path extension |
	
	path := aDefinition isServiceType ifTrue: [ self servicesDirectory ] ifFalse: [ self typesDirectory ].
	extension := aDefinition isServiceType ifTrue: [ 'srv' ] ifFalse: [ 'msg' ].
	
	self newFile: aDefinition shortName ,'.',extension 
			   at: path
			with: aDefinition rosdefinition.
			
	aDefinition isServiceType ifTrue: [ 
		deployedServices add:  aDefinition shortName 
	] ifFalse:[
		deployedTypes add:  aDefinition shortName 
	].
	dependencies addAll: aDefinition dependencies.
	