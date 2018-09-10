*PhaROSCommander
deleteRecursively
	self isDirectory ifTrue: [
		self directories do: #deleteRecursively.
		self files do:#delete.
	].
	self delete.