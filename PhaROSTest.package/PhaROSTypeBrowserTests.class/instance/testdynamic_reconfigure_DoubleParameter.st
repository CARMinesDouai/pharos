test-dynamic_reconfigure/
testdynamic_reconfigure_DoubleParameter
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/DoubleParameter'. 
	self assert: definition typeName = 'dynamic_reconfigure/DoubleParameter'.
	self assert: definition md5Sum = 'd8512f27253c0f65f928a67c329cd658'.
		