services
testCall

	"tests both call variants"
	PRRosCalloutAPI call: '/turtle1/teleport_absolute' withArgs: ' "x: 1.0 \y: 2.0 \theta: 3.0 " ' withCRs.
	
	self isTurtleAt: { 1.0 . 2.0 . 3.0 . 0.0 . 0.0 }.
	
	PRRosCalloutAPI call: '/reset'. 
	
	self isTurtleAtOrigin

