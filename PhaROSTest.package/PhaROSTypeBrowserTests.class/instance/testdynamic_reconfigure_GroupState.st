test-dynamic_reconfigure/
testdynamic_reconfigure_GroupState
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/GroupState'. 
	self assert: definition typeName = 'dynamic_reconfigure/GroupState'.
	self assert: definition md5Sum = 'a2d87f51dc22930325041a2f8b1571f8'.
		