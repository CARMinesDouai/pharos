as yet unclassified
finalize 
	super finalize.
	process finalize.
	process := nil.
	topic := nil.
	stream close.
	stream := nil.
	msg := nil.
	channel := nil.