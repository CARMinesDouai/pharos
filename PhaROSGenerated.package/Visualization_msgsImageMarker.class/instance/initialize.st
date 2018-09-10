as yet unclassified
initialize
	super initialize.
	 self header: Std_msgsHeader new. 
	 self ns: ''. 
	 self id: 0. 
	 self type: 0. 
	 self action: 0. 
	 self position: Geometry_msgsPoint new. 
	 self scale: 0.0. 
	 self outline_color: Std_msgsColorRGBA new. 
	 self filled: 0. 
	 self fill_color: Std_msgsColorRGBA new. 
	 self lifetime:  Duration seconds: 0. 
	 self points: OrderedCollection new . 
	 self outline_colors: OrderedCollection new . 
