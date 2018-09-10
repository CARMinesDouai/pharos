tests
testPositionRotation
	| position rotation |
	position := PhaROSPosition x: 1 y: 1  z:0.
	
	rotation := (position rotate: Float pi / 4 ) + (position rotate: (Float pi / 4) + (Float pi /2 )).
	self assert: ((rotation x truncateTo: 0.01) = (-1 * (2 sqrt ) truncateTo: 0.01) ).
	self assert: ((rotation y truncateTo: 0.01) = ( (2 sqrt ) truncateTo: 0.01) ).

	 
	rotation := (position rotate: Float pi / 4 ) + (position rotate: (Float pi / 4) + (Float pi)).
	self assert: (rotation x truncateTo: 0.01) = 0.0.
	self assert: (rotation y truncateTo: 0.01) = 0.0.
	