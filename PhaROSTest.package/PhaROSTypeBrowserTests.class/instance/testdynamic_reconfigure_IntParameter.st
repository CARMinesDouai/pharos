test-dynamic_reconfigure/
testdynamic_reconfigure_IntParameter
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/IntParameter'. 
	self assert: definition typeName = 'dynamic_reconfigure/IntParameter'.
	self assert: definition md5Sum = '65fedc7a0cbfb8db035e46194a350bf1'.
		