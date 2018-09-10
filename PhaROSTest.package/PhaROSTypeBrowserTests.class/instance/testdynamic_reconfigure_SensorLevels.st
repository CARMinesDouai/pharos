test-dynamic_reconfigure/
testdynamic_reconfigure_SensorLevels
	| definition | 
	definition :=  browser type: 'dynamic_reconfigure/SensorLevels'. 
	self assert: definition typeName = 'dynamic_reconfigure/SensorLevels'.
	self assert: definition md5Sum = '6322637bee96d5489db6e2127c47602c'.
		