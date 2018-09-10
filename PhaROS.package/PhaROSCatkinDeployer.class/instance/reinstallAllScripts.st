public api
reinstallAllScripts
	self scriptsDirectory allFiles do: [ : e| e delete ].
	self installAllScripts.