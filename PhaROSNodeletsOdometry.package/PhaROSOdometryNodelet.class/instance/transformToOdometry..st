as yet unclassified
transformToOdometry: aTopicConnection
	aTopicConnection for: [
		: position | 
		self informPositionAsOdometry: position.
	]