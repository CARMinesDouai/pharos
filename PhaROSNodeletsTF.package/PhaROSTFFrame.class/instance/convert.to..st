frame calculations
convert: aPosition to: aFrame
	| pseudo |	
	
	pseudo := PhaROSTFFrame id: 'pseudo-frame' parent: self.
	pseudo pose: (PhaROSPose position: aPosition orientation: PhaROSQuaternion zero).
	^ aFrame poseRelativeTo: pseudo.		
