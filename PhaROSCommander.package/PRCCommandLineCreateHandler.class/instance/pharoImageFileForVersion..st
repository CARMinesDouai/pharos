pharo images
pharoImageFileForVersion: pharoVersionString

	| pharoImage |
	pharoImage := Smalltalk imageDirectory / ('Pharo' , pharoVersionString , '.image').
	
	(pharoVersionString = 'alpha') ifTrue: [  
		pharoImage ensureDelete.
		(Smalltalk imageDirectory / ('Pharo' , pharoVersionString , '.changes')) ensureDelete ].
	
	pharoImage exists not ifTrue: [ self downloadPharoVersionNamed: pharoVersionString ].

	^ pharoImage