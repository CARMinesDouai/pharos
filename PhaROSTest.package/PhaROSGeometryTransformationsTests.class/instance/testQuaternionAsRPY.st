tests
testQuaternionAsRPY
	| ang |
	<expectedFailure>
	ang := PhaROSQuaternion zero asRPY .
	
	self assert: ang roll = 0.0.
	self assert: ang pitch = 0.0.
	self assert: ang yaw = 0.0.	
	

	

	ang := (PhaROSQuaternion x: 0.0 y: 0.001 z: 0.0 w: -1.0) asRPY.
	
	self assert: ang roll = Float pi.
	self assert: ang pitch = Float pi.
	self assert: ang yaw = Float pi.	
	

	