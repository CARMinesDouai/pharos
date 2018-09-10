as yet unclassified
manageError: anError
	| callbackErrors |

	callbackErrors := Set new.
	
	(self errorCallbacksFor: anError class ) do: [ 
		: ec | [ec cull: anError] on: Error do: [ :e | 
			callbackErrors add: e
		] .	
	].
	callbackErrors size > 0 ifTrue: [ 
		self error: 'Error executing callbacks! Check callbackErrors set '.
		callbackErrors inspect. 
	 ]
	