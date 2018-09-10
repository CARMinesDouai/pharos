as yet unclassified
status
	| stat | 
	
	status ifNotNil:[ ^ status ].
	
	
	stat :=   self statusReal .
	
	
	stat = PhaROSRPCNodelet error ifTrue:[ 
		isError := isError + 1.
		isError > 2 ifTrue: [
			^ stat 	
		] ifFalse: [
			^ PhaROSRPCNodelet moving.
		]
	 ] ifFalse: [
		isError := 0. 
	].
	
	stat = PhaROSRPCNodelet arrived ifTrue: [ 
		currentGoal := nil.
		^ stat.	
	].
	
	^ stat.