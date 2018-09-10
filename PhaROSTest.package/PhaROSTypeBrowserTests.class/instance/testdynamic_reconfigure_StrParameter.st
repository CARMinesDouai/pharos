test-dynamic_reconfigure/
testdynamic_reconfigure_StrParameter
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/StrParameter'. 
	self assert: definition typeName = 'dynamic_reconfigure/StrParameter'.
	self assert: definition md5Sum = 'bc6ccc4a57f61779c8eaae61e9f422e0'.
		