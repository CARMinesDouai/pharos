publish-subscribe
testSubscribe
	| subscription |
	
	PRRosCalloutAPI call: '/reset'.
	
	subscription := PRRosCalloutAPI subscribeTo: '/turtle1/pose'.
	
	[subscription value isNil] whileTrue: [Processor yield].

	self isTurtleAt: { 5.544444561 . 5.544444561 . 0.0 . 0.0 . 0.0 } forPeekString: subscription value .
	
	PRRosCalloutAPI call: '/turtle1/teleport_absolute' withArgs: ' "x: 1.0 \y: 2.0 \theta: 3.0 " ' withCRs.
	"wait until we are sure the movement has been made"
	1 second wait.
	self isTurtleAt: { 1.0 . 2.0 . 3.0 . 0.0 . 0.0 } forPeekString: subscription value.
	
	PRRosCalloutAPI unsubscribe: subscription.
