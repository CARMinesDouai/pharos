as yet unclassified
testMessageType
	| publisherNode  type  pub |

publisherNode := PhaROSBlockNode name: '/PublisherTestNode' domain: 'localhost' tcpPort:9157  xmlRpcPort: 6206 master: master soul: [].

	master registerNode: publisherNode .
	
	pub := publisherNode publisher:  '/turtle1/cmd_vel'  typedAs: 'geometry_msgs/Twist' .
	
	pub send: [ : msg |
			type := msg class
	].
	(Delay forMilliseconds: 1500) wait.
	pub send: [ : msg |
			type := msg class
	].
	
	self assert: type = 'geometry_msgs/Twist' asPhaROSTypeClass.