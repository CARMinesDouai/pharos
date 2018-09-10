as yet unclassified
sourceParentOfTarget
	resultQuaternion := targetToTopQuaternion inverse.
    	resultVector := resultQuaternion rotatePosition: ( targetToTopVector * -1).
    ^ PhaROSPose position: resultVector orientation: resultQuaternion.