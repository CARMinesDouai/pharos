resolving
silent
	^ self checkSilent: (commandLine optionAt: #silent ifAbsent: [ 'true' ]).