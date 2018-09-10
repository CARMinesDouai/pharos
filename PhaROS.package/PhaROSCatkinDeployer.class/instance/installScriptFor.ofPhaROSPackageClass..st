generating - scripts methods
installScriptFor: aSelector ofPhaROSPackageClass: aPhaROSPackageClass

	 ((aSelector beginsWith: 'script') and: [(aSelector indexOf: $:) = 0])  ifFalse: [ ^ self ].

	self 
		newFile: (self filenameFor: aSelector inClass: aPhaROSPackageClass) 
		at: self scriptsDirectory with: ('{1} new {2}. ' 
		format: { aPhaROSPackageClass name asString. aSelector asString}).
	