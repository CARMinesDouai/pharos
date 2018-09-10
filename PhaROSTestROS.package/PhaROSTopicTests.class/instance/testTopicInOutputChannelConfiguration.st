as yet unclassified
testTopicInOutputChannelConfiguration
	| node  itopic ichannel otopic ochannel semaphore publisherNode |

	semaphore := Semaphore new.
	
	node :=  PhaROSTestNode  name: '/TestNode' domain: '127.0.0.1' tcpPort: 9930 xmlRpcPort:  6123 master: master. 	
	master registerNode: node.


	publisherNode :=PhaROSBlockNode name: '/PublisherTestNode' domain: '127.0.0.1' tcpPort:  9999  xmlRpcPort:  6127 master: master soul: [
		: me |
		me sendTo: '/turtle1/pose'  typedAs: 'turtlesim/Pose' a: [ : msg |
			otopic :=  master lookupTopic: '/turtle1/pose'.
			ochannel := otopic outputchannels detect: [ : o | o xmlurl = 'http://127.0.0.1:6127/' ].
		].
	].

	master registerNode: publisherNode.
	publisherNode execute. 
	
	
	node subscriberBehavior: [
		:aMessage :aChannel  |
		ichannel := aChannel.
		itopic :=  master lookupTopic: '/turtle1/pose'.
		semaphore signal.
	].

	node subscriber: '/turtle1/pose' typedAs: 'turtlesim/Pose' .

	1 second asDelay wait. 
	
	publisherNode execute. 
	
	semaphore waitTimeoutSeconds: 5.

	
	(Delay forMilliseconds: 1500) wait.

	self assert: itopic == otopic. 

	self assert: ochannel subscribers size = 1.
	self assert: ichannel publishers size = 2.
	
	self assert: ochannel owner = publisherNode.
	self assert: (ochannel subscribers anyOne isKindOf: PhaROSInternalNodeLink).
	self assert: ( ochannel subscribers allSatisfy: [: s | s channel owner = node ]).
	 
	self assert: ichannel owner name =  '/TestNode'.
	self assert:( ichannel owner isKindOf: PhaROSTestNode )
	
	