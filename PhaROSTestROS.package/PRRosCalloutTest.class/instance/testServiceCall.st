services
testServiceCall
	 |process result assocs|
	"Depends on testEcho"
	
	OSProcess waitForCommand: ' rosservice call /turtle1/teleport_absolute "x: 1.0 \y: 2.0 \theta: 3.0 " ' withCRs.

	[	process := (PipeableOSProcess  command: 'rostopic echo /turtle1/pose __name:=echo3'). 
		1 seconds wait.
		result :=  (process upToEnd readStream upToAll: '---').
	]
		ensure: [ OSProcess command: 'rosnode kill /echo3'].	
			
	assocs := resource build: 5 associationsFrom: (resource tokenizeString: result).
	self assert: (assocs at: 1 ) key = 'x:'.
	self assert: (Float readFrom: ((assocs at: 1 ) value)) = 1.0.

	self assert: (assocs at: 2 ) key = 'y:'.
	self assert: (Float readFrom: ((assocs at: 2 ) value)) = 2.0.

	self assert: (assocs at: 3 ) key = 'theta:'.
	self assert: (Float readFrom: ((assocs at:  3) value)) = 3.0.
		
	self assert: (assocs at: 4 ) key = 'linear_velocity:'.
	self assert: (Float readFrom: ((assocs at: 4) value)) = 0.0.
	
	self assert: (assocs at: 5 ) key = 'angular_velocity:'.
	self assert: (Float readFrom: ((assocs at: 5 ) value)) = 0.0.