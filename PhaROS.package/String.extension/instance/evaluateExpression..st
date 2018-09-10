*PhaROS
evaluateExpression: aByteString 
	self class compile:  'DoIt ^', aByteString.
	^ self DoIt