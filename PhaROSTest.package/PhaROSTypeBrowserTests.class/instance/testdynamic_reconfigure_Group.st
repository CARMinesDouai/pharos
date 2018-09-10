test-dynamic_reconfigure/
testdynamic_reconfigure_Group
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/Group'. 
	self assert: definition typeName = 'dynamic_reconfigure/Group'.
	self assert: definition md5Sum = '9e8cd9e9423c94823db3614dd8b1cf7a'.
		