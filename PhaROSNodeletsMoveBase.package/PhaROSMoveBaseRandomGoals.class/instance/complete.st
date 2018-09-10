setting run state
complete
	self statsFor: currentGoal.
	(while cull: self)
		ifTrue: [ 
			(Delay forMilliseconds: 1000) wait.
			self start ]
		ifFalse: [ self halt: 'END :)' ]