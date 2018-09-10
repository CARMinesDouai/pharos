topic-subscription
goTo: aPose
	^ self
		goToGoal:
			((PhaROSMoveBaseGoal for: aPose)
				stamp: PhaROSTimestamp now;
				yourself)