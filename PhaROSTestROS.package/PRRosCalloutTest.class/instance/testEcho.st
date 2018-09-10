publish-subscribe
testEcho
	| process result list assocs  |
	
	"No dependencies on other tests"
	
	[	process := (PipeableOSProcess  command: 'rostopic echo /turtle1/pose __name:=echo3'). 
		3 seconds wait.
		result :=  (process upToEnd readStream upToAll: '---').
	]
		ensure: [ OSProcess command: 'rosnode kill /echo3'].
	
	list := (resource tokenizeString: result).
	self assert: list size = 10.
	
	assocs := resource build: 5 associationsFrom: list.
	self assert: (assocs at: 1 ) key = 'x:'.
	self shouldnt: [Float readFrom: ((assocs at: 1 ) value) ] raise:  Error.

	self assert: (assocs at: 2 ) key = 'y:'.
	self shouldnt: [Float readFrom: ((assocs at: 2 ) value) ] raise:  Error.

	self assert: (assocs at: 3 ) key = 'theta:'.
	self shouldnt: [Float readFrom: ((assocs at:  3) value) ] raise:  Error.
		
	self assert: (assocs at: 4 ) key = 'linear_velocity:'.
	self shouldnt: [Float readFrom: ((assocs at: 4) value) ] raise:  Error.
	
	self assert: (assocs at: 5 ) key = 'angular_velocity:'.
	self shouldnt: [Float readFrom: ((assocs at: 5 ) value) ] raise:  Error.

	