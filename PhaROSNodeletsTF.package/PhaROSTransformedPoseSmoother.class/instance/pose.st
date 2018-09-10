as yet unclassified
pose
	| position orientation  poses |
	poses := posesStamps values, { lastPose . lastPose . lastPose }.
	
	position := 	(poses collect: #position ) sum / poses size.
	orientation  := 	(poses  collect: #orientation ) sum / poses size.
	^ PhaROSPose position: position orientation: orientation.
	