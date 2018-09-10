as yet unclassified
recordPose
	| measure pose |
	measure := self nodelets poseTracker recordCurrentPose.
	pose := measure pose.
	
	self nodelets poseTracker save: ( self nodelets robulab landmarksFile).
	
	^ { 
		#point -> (pose position x @ pose position y) .
		#orientation -> pose orientation as2DOrientation .
		#id -> measure id.
	} asDictionary.