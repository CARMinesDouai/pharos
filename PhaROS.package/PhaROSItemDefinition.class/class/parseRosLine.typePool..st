type parsing
parseRosLine: aLine typePool: aTypePool
	| fieldType fieldName |
	fieldType := self parseType:( ($ split: aLine) at:1)  typePool: aTypePool.
	fieldName := ($ split: aLine) at:2.
	 ^ self new type: fieldType; name: fieldName; yourself