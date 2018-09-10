initialize-release
initialize 
	super initialize.
	nodes := Dictionary new. 
	topics := Dictionary new.
	services := Dictionary new.
	serviceExposers := Dictionary new.
	parameters := Dictionary new.