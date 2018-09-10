as yet unclassified
x: anX y: anY z: aZ o: aZOrientation
	^ self 
		position: (PhaROSPosition x: anX y: anY z: aZ) 
		orientation: (PhaROS2DOrientation z: aZOrientation)