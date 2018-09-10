as yet unclassified
initialPose
	^ (self rosnode buildConnectionFor: self class initialPoseTopic)
			typedAs: self class initialPoseTopicType;
			adapted: #pose \> #pose \> PhaROSPose;
			connect