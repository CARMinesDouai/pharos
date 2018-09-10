as yet unclassified
cull: aPose cull: aChannel cull: aTimeStamp 

	(lastTimeStamp isNil or: [aTimeStamp > lastTimeStamp ])ifTrue: [
		self register: aPose at: aTimeStamp. 
	].
	^ callback cull: self pose cull: aChannel cull: aTimeStamp.