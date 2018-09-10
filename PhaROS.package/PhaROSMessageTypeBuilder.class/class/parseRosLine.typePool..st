type parsing
parseRosLine: aLine typePool: aTypePool
	
	^ (aLine indexOf: $=) = 0 ifTrue: [ 
		PhaROSFieldDefinition parseRosLine: aLine typePool: aTypePool
	 ] ifFalse: [ 
		PhaROSConstantDefinition parseRosLine: aLine typePool: aTypePool.
	 ]