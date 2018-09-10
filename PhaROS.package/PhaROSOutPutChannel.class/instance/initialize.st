service
initialize 
	super initialize .
	subscribers := Set new.
	mutex := Mutex new.