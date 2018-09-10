topic-publishing
initialPoseOut
	^ initialPoseOut
		ifNil: [ initialPoseOut := self rosnode 
													topicPublisher: self class initialPoseTopic 
													typedAs: self class initialPoseTopicType ]