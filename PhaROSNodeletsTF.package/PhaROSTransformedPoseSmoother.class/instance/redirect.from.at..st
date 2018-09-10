as yet unclassified
redirect: aPose from: aChannel at: aTimeStamp 
	aTimeStamp > lastTimeStamp ifTrue: [
		self register: aPose at: aTimeStamp 
	].
	^ callback cull: self pose cull: aChannel cull: aTimeStamp.