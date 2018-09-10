topic-writing
writerFor: aFrameID withParent: aParentFrameID
	 | frame parent |
	frame :=  framesContainer at: (self rosnodeResolveName: aFrameID).
	parent := framesContainer at: (self rosnodeResolveName: aParentFrameID).
	
	frame parent ifNil: [ frame parent: parent ].
	
	^ self writerFor: frame. 