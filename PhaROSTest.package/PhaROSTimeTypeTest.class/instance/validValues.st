tests - parametrization
validValues 
	^ {
		(PhaROSTimestamp new)  -> #[8 0 0 0 0 0 0 0 0 0 0 0] .
"		(PhaROSTimestamp new seconds: 4294967295 nanoSeconds: 4294967295; yourself)  -> #[8 0 0 0 252 17 164 24 255 255 255 255].
		(PhaROSTimestamp new seconds: 4294967295 nanoSeconds: 0; yourself)  -> #[8 0 0 0 1 18 164 24 0 0 0 0].
		(PhaROSTimestamp new seconds: 0 nanoSeconds: 4294967295; yourself)  -> #[8 0 0 0 251 17 164 24 255 255 255 255].
"	}.
	
