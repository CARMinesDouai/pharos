as yet unclassified
whenLocalizerMeasure: aConditionBlock doOnce: anActionBlock
	^ self events add: (
		PhaROSOneTimeSpaceEvent new manager: self; 
										    condition: aConditionBlock; 
										    action: anActionBlock; 
										    yourself
		).