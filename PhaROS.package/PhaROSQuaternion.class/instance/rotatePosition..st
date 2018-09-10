operators
rotatePosition: aPosition
	| quaternion  inverse |
	quaternion := self * aPosition.
	inverse := self inverse. 
	quaternion := quaternion * inverse.
	^ (PhaROSPosition x: quaternion x y: quaternion y z: quaternion z).