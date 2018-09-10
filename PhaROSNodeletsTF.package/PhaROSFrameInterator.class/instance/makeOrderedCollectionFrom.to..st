as yet unclassified
makeOrderedCollectionFrom: aFrame to: otherFrame


	| parents secondPath  commonParent |
	
	
	" If is the same frame, there is nothing to iterate ".
	
	aFrame = otherFrame ifTrue: [ ^ {} ].
	
	parents := aFrame parents .
	
	" If the target frame is direct parent, then the iteration is from aFrame to otherFrame through parent link "
	(parents includes: otherFrame) ifTrue: [
		^ {{ aFrame }, (parents copyFrom: 1 to: (parents indexOf: otherFrame) ) . { PhaROSPose zero} }.
	]. 
	
	secondPath := OrderedCollection new.
	secondPath add: otherFrame.	
	
	otherFrame withParentsDo: [ 
		: aParent |
		commonParent ifNil: [ secondPath add: aParent ].
		(commonParent isNil and: [(parents includes: aParent ) ]) ifTrue: [ commonParent := aParent ].
	].
	

	commonParent ifNil: [
		(secondPath includes: aFrame) ifTrue: [
			^{ { PhaROSPose zero} . (secondPath copyFrom: 1 to: (secondPath indexOf: aFrame) ) }.
		] ifFalse: [
			self error: 'There is not parent in common between frames'.
		]
	] ifNotNil:[
		
		^ {parents . secondPath.} 
	].
	
	
	self error: 'How do we reach this scenario???'.












