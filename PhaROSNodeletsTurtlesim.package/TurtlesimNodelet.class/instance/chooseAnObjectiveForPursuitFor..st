handler
chooseAnObjectiveForPursuitFor: aHandle
	| possible |
	possible := TurtleHandle allInstances reject: [ :h | h == aHandle].
	(possible size > 0 ) ifFalse: [ self error: 'There are not pursuitable targets' ].
	^ possible shuffle  at: 1.
	