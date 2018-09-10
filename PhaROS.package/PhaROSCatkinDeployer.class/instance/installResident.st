public api
installResident
	" Install residents mean that we want to be able to automatize the types generation and scripts installation for the given installation. 
	"
	
	SystemAnnouncer uniqueInstance weak 
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodRemoved: to: self;
		when: MethodAdded send: #methodAdded: to: self.
	
	
	 
	
	