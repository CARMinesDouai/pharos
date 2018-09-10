control
moveAt: aLinearSpeed and: anAngularSpeed
	velocityOut send: [ :msg | 
		msg linear: (self convertToGeometryVector3: aLinearSpeed).
		msg angular: (self convertToGeometryVector3: anAngularSpeed).	
	].