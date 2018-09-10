as yet unclassified
fromPharosSGLandMark: aLandmark
	^ self new id: aLandmark landmark; pose: (PhaROSPose fromGeometry_msgsPose: aLandmark pose)