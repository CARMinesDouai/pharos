test-dynamic_reconfigure/
testdynamic_reconfigure_ParamDescription
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/ParamDescription'. 
	self assert: definition typeName = 'dynamic_reconfigure/ParamDescription'.
	self assert: definition md5Sum = '7434fcb9348c13054e0c3b267c8cb34d'.
		