phaROS images
phaROSImageFileForPharoVersion: pharoVersionString
	
	| pharosSuffix phaROSImage |
	
	self shouldLoadBleedingEdge 
		ifTrue: [ pharosSuffix := 'PhaROS-BleedingEdge' ]
		ifFalse: [ pharosSuffix := 'PhaROS-Stable' ].
	
	phaROSImage := Smalltalk imageDirectory / ('Pharo' , pharoVersionString , '-', pharosSuffix, '.image').
	
	self shouldLoadBleedingEdge ifTrue: [ 
		phaROSImage ensureDelete.
		(Smalltalk imageDirectory / ('Pharo' , pharoVersionString , '-', pharosSuffix, '.changes')) ensureDelete ].
	
	phaROSImage exists not 
		ifTrue: [ self buildNewPhaROSImageNamed: phaROSImage usingPharoVersion: pharoVersionString ].

	^ phaROSImage