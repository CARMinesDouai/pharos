as yet unclassified
currentLandmarkId
	self flag: #pathNilInOtherPlace.
	path ifNil: [ ^ 1 ].
		
	^ currentId > path size ifTrue: [
		path := nil.	
		1.
	] ifFalse: [
		currentId = 0 ifTrue: [ 1 ] ifFalse: [ path at: currentId .]
	].
	