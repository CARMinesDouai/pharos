as yet unclassified
initialize
	super initialize. 
	handler := Set new.
	condition := PhaROSTopicFlux defaultConditional.
	adapter := PhaROSTopicFlux defaultAdapter adaptToAdapter.