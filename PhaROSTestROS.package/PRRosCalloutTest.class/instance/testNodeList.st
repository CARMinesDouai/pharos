nodes-topics
testNodeList
	| list |
	
	"No dependencies on other tests"
	
	list := resource tokenizeString:((PipeableOSProcess command: 'rosnode list') output).
	
	self assert:  (list includes:'/rosout').
	self assert: (list includes:'/turtle1').
	self assert: list size = 2.
"In case we run the teleop"
"	self assert: list size = 3.
	self assert: (list includes:'/turtle_teleop')."