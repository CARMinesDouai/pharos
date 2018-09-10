as yet unclassified
register: aPose at: aTimeStamp 
	| now |
	now := DateAndTime now.
	
	posesStamps keys select: [ : stamp |  (now - stamp) asMilliSeconds > 1000 ] thenDo: [ : stamp | posesStamps removeKey: stamp ].
	posesStamps at: aTimeStamp put: aPose. 
	lastPose := aPose.
	lastTimeStamp := aTimeStamp.