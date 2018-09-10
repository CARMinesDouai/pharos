accessing
parents
	| parents aux |
	parents := OrderedCollection new.
	aux := self. 
	[ 
		parents add: aux.
		aux := aux parent. 
	 ] doWhileTrue: [ aux notNil ].

	 ^ parents.