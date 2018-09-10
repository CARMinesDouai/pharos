public
execute

	NetworkSystemSettings useHTTPProxy
		ifTrue:  [ self off ]
		ifFalse: [ self on ]