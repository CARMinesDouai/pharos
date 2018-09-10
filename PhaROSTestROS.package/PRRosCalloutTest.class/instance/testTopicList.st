nodes-topics
testTopicList
	| list |
	
	"No dependencies on other tests"
	
	list := resource tokenizeString: ((PipeableOSProcess command: 'rostopic list') output ).

	self assert: (list includes:'/rosout').
	self assert: (list includes:'/rosout_agg').
	self assert: (list includes:'/turtle1/cmd_vel').
	self assert: (list includes:'/turtle1/color_sensor').
	self assert: (list includes:'/turtle1/pose').
	self assert: (list size = 5).