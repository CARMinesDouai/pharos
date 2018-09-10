as yet unclassified
targetParentOfSource
    resultQuaternion := sourceToTopQuaternion.
    resultVector := sourceToTopVector.
    ^ PhaROSPose position: resultVector orientation: resultQuaternion.