operators
/ anScalar

	self flag: #thisJustWorkWith2d.
	^ (self as2DOrientation / anScalar ) asQuaternion.