as yet unclassified
lookUpConverterFrom: aClass to: anOtherClass

	| apply |
	
	converter ifNotNil: [ ^ converter ].
	
	apply := [ : pragmas :class | 
		pragmas size > 1 ifTrue: [ self warn: 'There is more than one way to convert ', aClass name, ' to ', anOtherClass name ].
		^  (converter:= [ : aValueToConvert | (pragmas at:1) method valueWithReceiver: class  arguments: { aValueToConvert } ])
	].

	self ifConfigurationsFor: { aClass name asSymbol . anOtherClass name asSymbol} at: anOtherClass do: [ : pragmas | 
		apply value: pragmas value: anOtherClass 
	].

	self ifConfigurationsFor: { aClass name asSymbol . anOtherClass name asSymbol} at: PhaROSConverter do: [ : pragmas | 
		apply value: pragmas value: PhaROSConverter 
	].
		
	self error: 'There is not way to convert ', aClass name, ' to ', anOtherClass name.
