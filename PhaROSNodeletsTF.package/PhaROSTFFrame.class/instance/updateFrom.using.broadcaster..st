updating
updateFrom: aTransformation using: db broadcaster: aNode

	
	aTransformation child_frame_id = self name ifTrue: [
		self pose: (PhaROSPose fromTransformation: aTransformation transform).
		self parent: (db at: aTransformation header frame_id ).
		self stamp: aTransformation header stamp. 
		self broadcaster: aNode.
	].
	
	