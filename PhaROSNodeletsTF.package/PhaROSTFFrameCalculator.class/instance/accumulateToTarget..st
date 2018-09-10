as yet unclassified
accumulateToTarget: aFrame
    targetToTopVector := (aFrame pose orientation rotatePosition: targetToTopVector) + aFrame pose position.
    targetToTopQuaternion := aFrame pose orientation * targetToTopQuaternion.