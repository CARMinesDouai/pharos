as yet unclassified
orientation
	^	(self rosnode buildConnectionFor: PhaROSInitialPose  orientationTopic) 
			typedAs: PhaROSInitialPose orientationTopicType ;
			adapted: #data;
			connect.	
