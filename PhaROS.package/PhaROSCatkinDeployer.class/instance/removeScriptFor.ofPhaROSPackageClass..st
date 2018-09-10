generating - scripts methods
removeScriptFor:  aSelector ofPhaROSPackageClass: aPhaROSPackageClass

	 | scriptFileName |
((aSelector beginsWith: 'script') and: [(aSelector indexOf: $:) = 0])  ifFalse: [ ^ self ].

	scriptFileName := self filenameFor: aSelector inClass: aPhaROSPackageClass.
	
	(self scriptsDirectory / scriptFileName) asFileReference ensureDelete 
