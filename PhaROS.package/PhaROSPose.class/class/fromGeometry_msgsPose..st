as yet unclassified
fromGeometry_msgsPose: aPose
	^ self 
		position: (PhaROSPosition from: aPose position) 
		orientation: (PhaROSQuaternion from: aPose orientation)