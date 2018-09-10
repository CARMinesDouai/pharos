publish-subscribe
subscribeTo: aTopic
	"Returns an association with 
		key: { ID of the echo node . forked thread }
		value: the last message read.
	 Don't forget to terminate the subscription! Call unsubscribe: with as argument retval."
	| retval key thread command |
	
	retval := Association new.
	"A simple attempt at a unique key"
	key := 'PRRosCalloutAPISub', Time now asNanoSeconds asString, 100000 atRandom asString.

	command := String streamContents: [ :str |
		str	nextPutAll: 'rostopic echo ';
			nextPutAll: aTopic;
			nextPutAll: ' __name:=';
			nextPutAll: key].
	
	thread := [| process |
			process := (PipeableOSProcess command: command).
			[true] whileTrue: [ retval value: (self readMessageFrom: process).]
		] fork.

	retval key: { key . thread }.
	^ retval.