converting
asTransform
	| transform | 
	transform := 'geometry_msgs/Transform' asPhaROSTypeClass new .
	
	transform translation x: self pose position x.
	transform translation y: self pose position y.
	transform translation z: self pose position z.
	
	transform rotation x: self pose orientation x. 
	transform rotation y: self pose orientation y. 
	transform rotation z: self pose orientation z. 
	transform rotation w: self pose orientation w.
	
	^ transform