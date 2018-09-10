accessing
initialize
	super initialize .
	nodelets := PhaROSNodeletContainer new  controller: self; yourself.
	tcpPort := (	(Random seed: DateAndTime now asUnixTime)  next; next; nextInt:1000) + 9000.
	xmlPort  := ((Random seed: DateAndTime now asUnixTime)  next; next; nextInt:1000) + 6000.