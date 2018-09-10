as yet unclassified
fromStargazerSGLandMark: aLandmark
	^ self new id: aLandmark landmark; pose: (PhaROSPose fromGeometry_msgsPose: aLandmark pose)