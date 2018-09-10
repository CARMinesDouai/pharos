accessing
response: anObject
	response := anObject. 
	response statusMessage ifEmpty: [^self].
	self messageText: response statusMessage