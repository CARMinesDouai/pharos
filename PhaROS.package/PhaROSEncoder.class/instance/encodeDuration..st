encoding
encodeDuration: aDuration
	self encodeUint32: aDuration secondsField.
	self encodeUint32: aDuration nanoSeconds.
	
