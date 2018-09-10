announcements on methods
manageEvent: anEvent
	((anEvent methodClass inheritsFrom: PhaROSPackage) and: [ anEvent  selector = #types]) ifTrue: [
		self reinstallAllTypes.	
	]. 