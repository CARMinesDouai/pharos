as yet unclassified
asGeometry_msgsPointCollection
	| center a b  points |
	center := self center position.
	
	a := (PhaROSPosition x: center x - (self length / 2) y: center y - (self length / 2) z: 0.0 ).
	b := (PhaROSPosition x: center x + (self length / 2) y: center y + (self length / 2) z: 0.0).

	points := OrderedCollection new.
	
	a x to: b x by: 0.05 do: [ : x  | 
		a y to: b y by: 0.05 do: [ : y  | 
			points add: ('geometry_msgs/Point' asPhaROSTypeClass new x: x ; y: y; z: (center z * -1)).
		]
	].

	^ points.