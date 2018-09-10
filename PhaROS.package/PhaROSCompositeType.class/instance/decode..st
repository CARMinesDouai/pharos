serializing
decode: aFLDecoder 
	| instance |
	instance := self relatedClass new.
	self typeDefinition keysAndValuesDo:  [ :name :type |
		instance at: name put: (type decode: aFLDecoder).
	].
	^ instance.