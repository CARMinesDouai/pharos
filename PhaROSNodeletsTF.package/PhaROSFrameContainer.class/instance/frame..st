as yet unclassified
frame: aFrameID
	^ frames at: aFrameID  ifAbsent: [ self error: aFrameID, ' is not being broadcasted'].