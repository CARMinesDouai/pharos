tests - parametrization
invalidByteArrays 
	^ {
		#[25 6] . #[ 10 10 ] . 'anString' asByteArray 
	}.