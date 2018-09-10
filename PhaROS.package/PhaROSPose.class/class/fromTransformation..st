as yet unclassified
fromTransformation: aTransformation
	^ self
		position: (PhaROSPosition fromTranslation: aTransformation translation)
		orientation: (PhaROSQuaternion fromRotation: aTransformation rotation)