publish-subscribe
peek: aTopic
	| command result id |
	
	"Unique id for today"
	id := 'PRRosCalloutAPIPeek', Time now asNanoSeconds asString.

	command := String streamContents: [ :str |
		str	nextPutAll: 'rostopic echo ';
			nextPutAll: aTopic;
			nextPutAll: ' __name:=';
			nextPutAll: id].
	
	[result :=  self readMessageFrom:  (PipeableOSProcess  command: command).]
		ensure: [ OSProcess command: 'rosnode kill /',id].
	^result.
