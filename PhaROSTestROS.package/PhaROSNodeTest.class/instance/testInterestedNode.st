as yet unclassified
testInterestedNode
	| asserts semaphore |
	
	
	semaphore := Semaphore new.
	asserts := { false . false . false }.
	
	
	node subscriberBehavior: [
		:aMessage :aChannel  |
		
		asserts at:1 put: ( aChannel topic name = '/turtle1/pose').
		asserts at:2 put: ( aMessage value isKindOf: ( Smalltalk at:#TurtlesimPose ) ).
		asserts at:3 put: ( aChannel isKindOf: PhaROSInPutChannel ).
		
		semaphore signal.
	].

	node interestedIn: '/turtle1/pose' typedAs: 'turtlesim/Pose'.
	semaphore waitTimeoutSeconds: 5.

	asserts do: [ :b | self assert: b ].
