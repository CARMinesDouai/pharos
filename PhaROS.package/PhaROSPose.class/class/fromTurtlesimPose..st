as yet unclassified
fromTurtlesimPose: aPose
	^ self 
		position: (PhaROSPosition x: aPose x y: aPose y z: 0.0) 
		orientation: (PhaROS2DOrientation z: aPose theta)