tests - parametrization
invalidByteArrays 
	^ {
		 'anString' asByteArray . #[0 0 0 0 0 0 0 0 0]
	}.
