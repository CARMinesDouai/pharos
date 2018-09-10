dispatching
fetchStamp: aMessage
	^ (aMessage hasAttribute: #header) ifTrue: [ aMessage header stamp asDateAndTime ] ifFalse: [ DateAndTime now ].