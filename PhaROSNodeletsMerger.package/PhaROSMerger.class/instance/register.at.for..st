as yet unclassified
register: msg at: stamp for: aTopicConnectionBuilder
	messages at: aTopicConnectionBuilder put: {msg . stamp asDateAndTime} .
	self merge.