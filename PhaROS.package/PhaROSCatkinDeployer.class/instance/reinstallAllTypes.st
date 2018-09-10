public api
reinstallAllTypes
	self servicesDirectory allFiles do: [ :e | e delete ]. 
	self typesDirectory allFiles do: [ :e | e delete ].
	self installAllTypes.