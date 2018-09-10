accessing
client

	^ client
		ifNil: [ 
			client := PhaROSMoveBaseClient new
				configure: self;
				yourself ]