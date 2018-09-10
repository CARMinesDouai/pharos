utilties
convertToGeometryVector3: aTriplet

	^ 'geometry_msgs/Vector3' asPhaROSTypeClass new
		x: aTriplet first;
		y: aTriplet second;
		z: aTriplet third;
		yourself			