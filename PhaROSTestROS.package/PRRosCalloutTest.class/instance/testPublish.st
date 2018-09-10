publish-subscribe
testPublish
	| process result assocs |
	
	"Depends on testServiceCall and testEcho"
	
	OSProcess waitForCommand: ' rosservice call /reset'.

	OSProcess waitForCommand:
'rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist "linear:
  x: 2.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 1.8"'.

	[	process := (PipeableOSProcess  command: 'rostopic echo /turtle1/pose __name:=echo3'). 
		1 seconds wait.
		result :=  (process upToEnd readStream upToAll: '---').
	]
		ensure: [ OSProcess command: 'rosnode kill /echo3'].	
			
	assocs := resource build: 5 associationsFrom: (resource tokenizeString: result).
	
	self assert: (assocs at: 1 ) key = 'x:'.
	self assert: (Float readFrom: ((assocs at: 1 ) value)) = 6.60281658173.

	self assert: (assocs at: 2 ) key = 'y:'.
	self assert: (Float readFrom: ((assocs at: 2 ) value)) = 6.93898963928.

	self assert: (assocs at: 3 ) key = 'theta:'.
	self assert: (Float readFrom: ((assocs at:  3) value)) = 1.81439995766.
		
	self assert: (assocs at: 4 ) key = 'linear_velocity:'.
	self assert: (Float readFrom: ((assocs at: 4) value)) = 0.0.
	
	self assert: (assocs at: 5 ) key = 'angular_velocity:'.
	self assert: (Float readFrom: ((assocs at: 5 ) value)) = 0.0.
