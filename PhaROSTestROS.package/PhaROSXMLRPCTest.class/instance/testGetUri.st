testing
testGetUri
	self assert: ( master getUri: self callerId) = (self masterUrl, '/')