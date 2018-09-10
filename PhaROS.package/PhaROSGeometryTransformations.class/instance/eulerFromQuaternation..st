as yet unclassified
eulerFromQuaternation: aQuaternion 
	^ self eulerFromMatrix: (self quaternionMatrixFor: aQuaternion)