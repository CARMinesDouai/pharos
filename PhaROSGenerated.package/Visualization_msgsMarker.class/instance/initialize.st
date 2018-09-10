as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self ns: ''. 
	 self id: 0. 
	 self type: 0. 
	 self action: 0. 
	 self pose: Geometry_msgsPose new. 
	 self scale: Geometry_msgsVector3 new. 
	 self color: Std_msgsColorRGBA new. 
	 self lifetime:  Duration seconds: 0. 
	 self frame_locked: false. 
	 self points: OrderedCollection new . 
	 self colors: OrderedCollection new . 
	 self text: ''. 
	 self mesh_resource: ''. 
	 self mesh_use_embedded_materials: false. 
