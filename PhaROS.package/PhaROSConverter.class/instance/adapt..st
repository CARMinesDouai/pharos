as yet unclassified
adapt: aPhaROSValue 
	| constructor |
	
	constructor := ('from', aPhaROSValue class name,':') asSymbol.
	(convertTo class canUnderstand:  constructor ) ifTrue: [
		^ convertTo perform: constructor with: aPhaROSValue.
	].
	
	^ (self lookUpConverterFrom: aPhaROSValue class to: convertTo) value: aPhaROSValue.
	