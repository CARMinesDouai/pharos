as yet unclassified
center
	| point angle |
	self compact.
	point := (measures collect: #position) average .
	point z: 0.0.
	angle := (measures collect: [ :p | p orientation as2DOrientation z]) average.
	point := point asPose.
	point orientation: (PhaROS2DOrientation z: angle).
	^ point. 
	