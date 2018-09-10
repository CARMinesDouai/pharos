initialize-release
configureNode 
	| handleNameParam handleNameRawParam|
	
	handleNameRawParam := Smalltalk arguments 
									detect: [ :p | p beginsWith: '__name:=' ] 
									ifNone: [ '' ].
	
	handleNameRawParam isEmpty 
		ifTrue: [ handleNameParam := self defaultNodeName ] 
		ifFalse: [ handleNameParam := handleNameRawParam copyFrom: 9 to: handleNameRawParam size ].
	
	self configureNodeNamed: handleNameParam

