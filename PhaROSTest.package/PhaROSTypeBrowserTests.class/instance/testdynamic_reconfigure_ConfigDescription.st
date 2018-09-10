test-dynamic_reconfigure/
testdynamic_reconfigure_ConfigDescription
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/ConfigDescription'. 
	self assert: definition typeName = 'dynamic_reconfigure/ConfigDescription'.
	self assert: definition md5Sum = '757ce9d44ba8ddd801bb30bc456f946f'.
		