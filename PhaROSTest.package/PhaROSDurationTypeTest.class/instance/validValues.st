tests - parametrization
validValues 
	^ {
		(Duration new seconds: 1 nanoSeconds: 0; yourself)  -> #[ 8 0 0 0 1 0 0 0 0 0 0 0 ] .
		(Duration new seconds: 4294967295 nanoSeconds: 4294967295; yourself)  -> #[ 8 0 0 0 255 255 255 255 255 255 255 255] .
		(Duration new seconds: 4294967295 nanoSeconds: 0; yourself)  -> #[ 8 0 0 0 255 255 255 255 0 0 0 0] .
	}.