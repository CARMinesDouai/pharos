accessing
commonParentWith: otherFrame
	| parents |
	parents := self parents .
	otherFrame withParentsDo: [ 
		: aParent |
		(parents includes: aParent ) ifTrue: [ ^ aParent ].
	].
	self error: 'There is not parent in common between frames'.