operators
- anOtherQuaternion
	self flag: #thisJustWorkWith2d.
	^ (self as2DOrientation - anOtherQuaternion as2DOrientation) asQuaternion 