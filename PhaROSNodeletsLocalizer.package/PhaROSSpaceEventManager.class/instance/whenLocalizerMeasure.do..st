as yet unclassified
whenLocalizerMeasure: aConditionBlock do: anActionBlock
	^ self events add: (
		PhaROSSpaceEvent new manager: self; 
								  condition: aConditionBlock; 
								  action: anActionBlock; 
								  yourself
					).