as yet unclassified
informPositionAsOdometry: aPosition
	self odometryTopicPublisher send: [ : msg | self configure: msg with: aPosition ].