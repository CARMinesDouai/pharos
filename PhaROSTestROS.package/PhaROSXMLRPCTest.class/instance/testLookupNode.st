testing
testLookupNode
	|node|
	node :=  master lookupNode: '/rosout' with: self callerId.
	self assert: (node url  host  = self masterUrl asUrl host)