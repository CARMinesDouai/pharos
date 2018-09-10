as yet unclassified
loop
	^ loop ifNil: [ loop := self paralellize looping serve asStickyReference ].