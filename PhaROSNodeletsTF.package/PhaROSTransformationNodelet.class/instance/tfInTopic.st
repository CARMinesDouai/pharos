topic-reading
tfInTopic
	^ tfInTopic
		ifNil: [ 
			tfInTopic := (self rosnode buildConnectionFor: PhaROSTransformationNodelet tfInTopic)
				typedAs: 'tf/tfMessage';
				connect 
		]