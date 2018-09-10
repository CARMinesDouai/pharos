as yet unclassified
broadcastEntities
	| points |
	
	points := entities values inject: OrderedCollection new into: [  :acc : e | acc addAll: e asGeometry_msgsPointCollection. acc ].
	mapping send: [ : msg | 
			msg header frame_id: '/map'.
			msg cell_width: 0.05.
			msg cell_height: 0.05.
			msg cells addAll:  points
	].	

	1 hz wait.