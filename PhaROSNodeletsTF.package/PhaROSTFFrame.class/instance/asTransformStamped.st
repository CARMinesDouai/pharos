converting
asTransformStamped
	| transformStamped | 
	
		transformStamped := 'geometry_msgs/TransformStamped' asPhaROSTypeClass new.
		
		transformStamped child_frame_id:  name.
		transformStamped header frame_id:  (parent ifNil: [''] ifNotNil: [ parent name ]).
		transformStamped transform: self asTransform.
		
	^ transformStamped.