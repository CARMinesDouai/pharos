announcements on methods
methodRemoved: anEvent

	((anEvent methodClass inheritsFrom: PhaROSPackage) and: [ (anEvent selector beginsWith: 'script')]) ifTrue:[
		self removeScriptFor: anEvent selector ofPhaROSPackageClass: anEvent methodClass
	].

	self manageEvent: anEvent.
	