as yet unclassified
measurePoseDiference: aPose
	| time deltaTime |
	time := DateAndTime now.
	previousPose
		ifNotNil: [ 
			deltaTime := (time - previousTime) asMilliSeconds / 1000.0.
			deltaTime < 0.15
				ifFalse: [ 
					poseDifference := ((aPose - previousPose) / deltaTime) abs limitedTo: 2.
					previousPose := aPose.
					previousTime := time ] ]
		ifNil: [ 
			previousPose := aPose.
			previousTime := time ].
	^ poseDifference