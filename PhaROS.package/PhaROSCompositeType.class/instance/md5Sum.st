serializing
md5Sum 

	md5Sum ifNil: [
		md5Sum:= PhaROSTypeBrowser instance md5Sum: typeName.
	].
	^ md5Sum