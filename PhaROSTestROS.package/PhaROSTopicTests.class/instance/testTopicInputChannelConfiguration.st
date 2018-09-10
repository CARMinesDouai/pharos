as yet unclassified
testTopicInputChannelConfiguration
	| node  topic channel semaphore |

	semaphore := Semaphore new.
	
	node := PhaROSTestNode  name: '/TestNode' domain: '127.0.0.1' tcpPort: 9983 xmlRpcPort: 63423 master: master.	
	master registerNode: node.
	node subscriberBehavior: [
		:aMessage :aChannel  |
		channel := aChannel.
		topic :=  master lookupTopic: '/turtle1/pose'.
		semaphore signal.
	].

	node subscriber: '/turtle1/pose' typedAs: 'turtlesim/Pose' .
	semaphore waitTimeoutSeconds: 5.


	self assert: topic = channel topic.
	self assert: (channel owner isKindOf: PhaROSTestNode ).
	self assert: (channel isKindOf: PhaROSInPutChannel ).
	self assert: topic inputchannels size = 1. 
	self assert: channel publishers size = 1.
	self assert: channel owner  name = '/TestNode'.
	
