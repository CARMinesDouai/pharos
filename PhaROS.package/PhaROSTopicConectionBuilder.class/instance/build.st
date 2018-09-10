building
build
	
	^  forDebug ifTrue: [
			PhaROSTopicFluxDebug new 
				adapter: adapter; 
				condition: when; 
				handler: callback; 
				errors: errors; 
				yourself.
	   ] ifFalse:  [
			PhaROSTopicFlux new 
				adapter: adapter; 
				condition: when; 
				handler: callback; 
				errors: errors;  
				yourself.
	   ].
	
