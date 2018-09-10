as yet unclassified
tfCallBack: aMessage
	| prefix publisher |
	prefix := aMessage transforms first header frame_id.
	tfPublishers
		at: prefix
		ifAbsent: [ 
			publisher := self controller node topicPublisher: '/', prefix , '/tf' typedAs: 'tf/tfMessage'.
			tfPublishers at: prefix put: publisher.
			self log: prefix , ' has been extracted from /tf.' ].
	(tfPublishers at: prefix)
		send: [ :msg | 
			msg transforms: aMessage transforms.
			msg ]