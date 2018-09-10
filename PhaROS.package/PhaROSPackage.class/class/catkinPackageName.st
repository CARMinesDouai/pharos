meta infos
catkinPackageName

	(self = PhaROSPackage) ifTrue: [ self shouldNotImplement  ].
	
	(self name endsWith: 'Package') ifTrue: [ 
		^ (self name truncateTo: (self name size - 7)) translateToLowercase
	] ifFalse: [ 
		self subclassResponsibility  
	]
	 
