as yet unclassified
express: aPoseTopic as: aFrameID childOf: aParentFrameID

	writer at: aPoseTopic ifAbsentPut: [ 
		| newWriter  |
		newWriter := (self nodelets transformation writerFor: aFrameID  withParent:  aParentFrameID ) .
		newWriter pose: PhaROSPose zero.
		newWriter.
	].

	aPoseTopic for: [ : pose | 
		(self writerAt: aPoseTopic) pose: pose 
	].
	
	