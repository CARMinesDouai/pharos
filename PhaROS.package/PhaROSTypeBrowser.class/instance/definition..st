definition
definition: aTypeId

	| firstLevel |

	(aTypeId isNil or: [ aTypeId isEmpty ]) ifTrue: [ PhaROSTypeError signal: 'Type error' ].
	
	^ (self browser at: aTypeId ifAbsentPut: [
	
			firstLevel := (Character lf split:( PhaROSSystemLauncher instance rosMsgShow: aTypeId ) ) select: [ :str | (str beginsWith: ' ') not & (str size > 3) ] .
						
			self typeNamed: aTypeId for: firstLevel

		]) 

