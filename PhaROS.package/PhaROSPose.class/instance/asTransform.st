printing
asTransform 

	| transform |
	transform := 'geometry_msgs/Transform' asPhaROSTypeClass new .
	
	transform translation x: self  position x.
	transform translation y: self  position y.
	transform translation z: self  position z.
	
	transform rotation x: self  orientation x. 
	transform rotation y: self  orientation y. 
	transform rotation z: self  orientation z. 
	transform rotation w: self  orientation w.
	
	^ transform 