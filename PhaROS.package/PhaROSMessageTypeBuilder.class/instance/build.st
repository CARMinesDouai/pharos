building
build
	^ (PhaROSCompositeType 	named: package, '/', name 
								definedBy: definition fields
								withConstants: definition constants) relatedClass: self relatedClass; yourself.