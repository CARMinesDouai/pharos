test-dynamic_reconfigure/
testdynamic_reconfigure_Config
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/Config'. 
	self assert: definition typeName = 'dynamic_reconfigure/Config'.
	self assert: definition md5Sum = '958f16a05573709014982821e6822580'.
		