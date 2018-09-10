tests - parametrization
validValues 
	^
	{
		-128 -> #[ 1 0 0 0  128 ].
		-1 -> #[1  0 0 0  255 ]. 
		0 ->  #[ 1 0 0 0  0 ] .
		127 ->  #[ 1 0 0 0  127 ] .
	} .