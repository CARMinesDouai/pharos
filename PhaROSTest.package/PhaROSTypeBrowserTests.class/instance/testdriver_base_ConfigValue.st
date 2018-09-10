test-driver_base/
testdriver_base_ConfigValue
	| definition | 
	definition :=  browser type: 'driver_base/ConfigValue'. 
	self assert: definition typeName = 'driver_base/ConfigValue'.
	self assert: definition md5Sum = 'd8512f27253c0f65f928a67c329cd658'.
		