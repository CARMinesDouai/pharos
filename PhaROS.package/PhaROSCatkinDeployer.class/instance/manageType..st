generating - types
manageType: definition
[
	(Smalltalk at: #PhaROSTypeBrowser) instance definition:  definition build typeName. 
] on: Error do: [
	 self deployType: definition
].
	