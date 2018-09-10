message handling
receive: aMessage from: aChannel 
"	name = '/rviz' ifTrue: [ Transcript show: aMessage value asString. ]."
	self addToMessagesQueue: aMessage dump.
	

