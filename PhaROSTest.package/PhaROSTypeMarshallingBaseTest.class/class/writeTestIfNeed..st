as yet unclassified
writeTestIfNeed: aSelector
 | testSelector callSelector | 

	testSelector := 'test', aSelector asString capitalized.
	callSelector := 'base', aSelector asString capitalized.
	
	
	self methodDict at: aSelector ifAbsent: [
		self compile:( '
			{1}
				^ super {2}.
		' translated format: { testSelector . callSelector }).
	].
	"PhaROSTypeMarshallingBaseTest allSubclasses do: #initialize."
	