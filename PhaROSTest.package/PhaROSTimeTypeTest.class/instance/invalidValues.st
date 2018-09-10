tests - parametrization
invalidValues 
	^ {
		-128 .   'a string' .  -1 . 4294967296 . (Time new seconds: 4294967298; yourself) .  (Time new seconds:0 nanoSeconds: 4294967298; yourself)
	}.
