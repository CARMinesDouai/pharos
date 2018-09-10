printing
printOn: aStream
	('Frame:{1} BroadcastedBy:{2}' format: {name . broadcaster }) printOn: aStream.
