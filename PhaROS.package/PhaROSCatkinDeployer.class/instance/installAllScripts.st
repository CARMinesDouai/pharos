public api
installAllScripts
	
	self phaROSPackageClass ifNotNil: [			
		self phaROSPackageClass methodDict keys select: [ : selector | (selector beginsWith: 'script') and: (selector indexOf: $: ) = 0 ] thenDo: [
			:selector | 
	self 
		newFile: (self filenameFor: selector inClass: self phaROSPackageClass ) 
		at: self scriptsDirectory with: ('{1} new {2}. ' 
		format: { self phaROSPackageClass name asString. selector asString}).
		]
	]