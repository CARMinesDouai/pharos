announcements on methods
methodAdded: anEvent
	
	((anEvent methodClass inheritsFrom: PhaROSPackage) and: [ (anEvent selector beginsWith: 'script')]) ifTrue:[
		self installScriptFor: anEvent selector ofPhaROSPackageClass: anEvent methodClass
	].

	self manageEvent: anEvent.
	