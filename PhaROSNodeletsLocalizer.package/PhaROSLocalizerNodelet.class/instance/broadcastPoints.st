as yet unclassified
broadcastPoints
	
	pointing send: [ : msg | 
		 msg header frame_id: '/map'.
		 entities values collect: [ : e | e asPose asGeometry_msgsPose ] thenDo: [ : p | msg addPose: p ].
	].	

	1 hz wait.