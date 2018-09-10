type parsing
parseRosLine: aLine typePool: aTypePool
	|typeLine|
	typeLine := ($= split: aLine).
	
	^ (super parseRosLine: (typeLine at:1) typePool: aTypePool) value: (typeLine at:2); yourself.
	