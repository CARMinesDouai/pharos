as yet unclassified
testPublisherNode
	| publisherNode  asserts semaphore |

	asserts := { false . false . false . false }.
	
	semaphore := Semaphore new.
	
	publisherNode := PhaROSBlockNode name: '/PublisherTestNode' domain: '127.0.0.1' tcpPort:  9456  xmlRpcPort:  6098 master: master soul: [
		: me |
		me sendTo: '/turtle1/cmd_vel' typedAs:'geometry_msgs/Twist' a: [ :msg |
			msg linear: 1.0. 
			msg angular: 1.1. 
		].
	].
	
	master registerNode: publisherNode.
	
	node subscriberBehavior: [
		:aMessage :aChannel  |
		asserts at:1 put: ( aChannel topic name = '/turtle1/cmd_vel').
		asserts at:2 put: ( aMessage value isKindOf: 'geometry_msgs/Twist' asPhaROSTypeClass ).
		asserts at:3 put: ( aChannel isKindOf: PhaROSInPutChannel ).
		asserts at:4 put: (
			aMessage value linear = 1.0 and: [
				aMessage value angular = 1.1	
			]		
		).
		semaphore signal. 
	].


	publisherNode execute.

	node subscriber: '/turtle1/cmd_vel' typedAs: 'geometry_msgs/Twist' asPhaROSTypeClass .	

	1 second asDelay wait.	


	publisherNode execute.
	publisherNode execute.	
	
	semaphore waitTimeoutSeconds: 10.
	
	asserts do: [ :b | self assert: b ].

	







