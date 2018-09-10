as yet unclassified
accumulateToSource: aFrame
    sourceToTopVector := (aFrame pose orientation rotatePosition: sourceToTopVector) + aFrame pose position.
    sourceToTopQuaternion := aFrame pose orientation * sourceToTopQuaternion.