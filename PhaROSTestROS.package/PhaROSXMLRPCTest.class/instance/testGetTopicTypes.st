testing
testGetTopicTypes
	| currentTopicTypes | 
	
	currentTopicTypes :=  master getTopicTypes: self callerId .
	self assert:  currentTopicTypes size > 0.
	self assert:  (currentTopicTypes keys allSatisfy: #isString).
	self assert:  (currentTopicTypes values allSatisfy: #isString).