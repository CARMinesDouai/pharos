initialize-release
initialize 

	browse := Dictionary new.
	
	browse at: 'byte' put: (PhaROSBasicTypeBuilder for:  PhaROSInt8Type new).
	browse at: 'char' put: (PhaROSBasicTypeBuilder for:  PhaROSInt8Type new).
	browse at: 'bool' put: (PhaROSBasicTypeBuilder for:  PhaROSBoolType new).
	browse at: 'float32' put: (PhaROSBasicTypeBuilder for:  PhaROSFloat32Type new).
	browse at: 'float64' put: (PhaROSBasicTypeBuilder for:  PhaROSFloat64Type new).
	
	browse at: 'int8' put: (PhaROSBasicTypeBuilder for:  PhaROSInt8Type new).
	browse at: 'int16' put: (PhaROSBasicTypeBuilder for:  PhaROSInt16Type new).
	browse at: 'int32' put: (PhaROSBasicTypeBuilder for:  PhaROSInt32Type new).
	browse at: 'int64' put: (PhaROSBasicTypeBuilder for:  PhaROSInt64Type new).
	
	browse at: 'uint8' put: (PhaROSBasicTypeBuilder for:  PhaROSUInt8Type new).
	browse at: 'uint16' put: (PhaROSBasicTypeBuilder for:  PhaROSUInt16Type new).
	browse at: 'uint32' put: (PhaROSBasicTypeBuilder for:  PhaROSUInt32Type new).
	browse at: 'uint64' put: (PhaROSBasicTypeBuilder for:  PhaROSUInt64Type new).
	
	browse at: 'time' put: (PhaROSBasicTypeBuilder for:  PhaROSTimeType new).
	browse at: 'duration' put: (PhaROSBasicTypeBuilder for:  PhaROSDurationType new).
	browse at: 'string' put: (PhaROSBasicTypeBuilder for:  PhaROSStringType new).
	
	

	








