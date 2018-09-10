accessing
stamp
	(stamp isNil and: [ parent isNil ]) ifTrue: [
		" fixed "
		^ DateAndTime now.	
	].
	^ stamp.
