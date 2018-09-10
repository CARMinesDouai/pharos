accessing
start
	| rnd |
	
	[ rnd := Random new nextInt: poses size ] doWhileTrue: [ rnd = currentPoseIDX ].
	currentPoseIDX := rnd.

	currentGoal := client goTo: (poses at: currentPoseIDX).	
	currentGoal onSucceeded: [self complete].
	currentGoal onAborted: [self complete].
	currentGoal onRejected: [self complete].