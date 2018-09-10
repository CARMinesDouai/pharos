instance creation
named: aTypeName package: aPackageName defined: aDefinition

	^ self new  name: aTypeName; 
				package: aPackageName; 
				definition: (PhaROSTypeDefinition for: aDefinition) ; 
				yourself.