running
setUp 

	type := PhaROSType composite: {
				#float32 -> PhaROSFloat32Type new.
				#int32 -> PhaROSInt32Type new .
				#int8 -> PhaROSInt8Type new .
				#uint64Array -> (PhaROSArrayType of: PhaROSUInt64Type ).
				#int64FixedArray -> (PhaROSArrayFixedLenghtType of: 3 of: PhaROSInt64Type ). 
			} named: 'testedType' withConstants:{}.
	
	type relatedClass: (PhaROSCompositeType named: 'testedType').

	validValues := self validValues collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	].

	invalidValues := self invalidValues collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	].
	
	

	