test-dynamic_reconfigure/
testdynamic_reconfigure_BoolParameter
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/BoolParameter'. 
	self assert: definition typeName = 'dynamic_reconfigure/BoolParameter'.
	self assert: definition md5Sum = '23f05028c1a699fb83e22401228c3a9e'.
		