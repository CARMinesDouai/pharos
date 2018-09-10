publish-subscribe
testPeek

	" The *only* OSProcess callout in this TestCase "
	OSProcess waitForCommand: ' rosservice call /reset'.
	"this actually does the peek and asserts the results are correct"
	self isTurtleAtOrigin.