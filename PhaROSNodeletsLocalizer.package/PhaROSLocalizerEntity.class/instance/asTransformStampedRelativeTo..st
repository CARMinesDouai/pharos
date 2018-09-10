as yet unclassified
asTransformStampedRelativeTo: aFrameParentID

	| transformStamped | 
	
		transformStamped := 'geometry_msgs/TransformStamped' asPhaROSTypeClass new.
		
		transformStamped child_frame_id:  self frameName.
		transformStamped header frame_id:  aFrameParentID.
		transformStamped transform: self asTransform.
		
	^ transformStamped.