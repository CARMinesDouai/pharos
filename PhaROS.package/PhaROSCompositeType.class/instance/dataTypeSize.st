serializing
dataTypeSize
	"beware of recursive structures!"
	
	^ typeDefinition values inject:0 into:[ :acc :t | acc + t dataTypeSize ].