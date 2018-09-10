as yet unclassified
testTopicOutputChannelConfiguration
	| publisherNode  topic channel pub |

	publisherNode := PhaROSBlockNode name: '/PublisherTestNode' domain: 'localhost' tcpPort:9157  xmlRpcPort: 62506 master: master soul: [].

	master registerNode: publisherNode .
	
	pub := publisherNode publisher:  '/turtle1/cmd_vel'  typedAs: 'geometry_msgs/Twist' .
	
	(Delay forMilliseconds: 1500) wait.
	
	pub send: [ : msg |
			topic :=  master lookupTopic: '/turtle1/cmd_vel'.
			channel := topic outputchannels detect: [ : o | o xmlurl = 'http://localhost:62506/' ] ifNone: [ nil ].
	].
	
	
	self assert: topic notNil.
	self assert: topic outputchannels size = 1.
	self assert: (channel isKindOf: PhaROSOutPutChannel) .
	self assert: channel owner == publisherNode .
	self assert: channel subscribers  size = 1.
	self assert: (channel subscribers anyOne isKindOf: PhaROSExternalSubscriberNode ).
	self assert: channel subscribers anyOne topic == topic.
	self assert: channel subscribers anyOne name = '/turtlesim'.
	
	