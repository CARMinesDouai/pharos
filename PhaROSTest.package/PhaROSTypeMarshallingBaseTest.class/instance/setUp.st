running
setUp
	super setUp.
	PhaROSTimestamp initialize.
	
	validValues := self validValues collect: [ :assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	].

	invalidValues := self invalidValues collect: [ :value |
		self newTestedClassInstance newPacket value: value ; yourself.
	].
	
	

	







