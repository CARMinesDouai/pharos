tests
testRPYAsQuaternion
	| ang |
	
	ang := PhaROSRPYOrientation zero asQuaternion  .
	
	self assert: ang x = 0.0.
	self assert: ang y = 0.0.
	self assert: ang z = 0.0.	
	self assert: ang w = 1.0.
	

	ang := (PhaROSRPYOrientation roll: Float pi pitch: Float pi  yaw: Float pi ) asQuaternion .
	
	self assert: ang x = 0.0.
	self assert: ang y = 0.001.
	self assert: ang z = 0.0.	
	self assert: ang w = -1.0.
	