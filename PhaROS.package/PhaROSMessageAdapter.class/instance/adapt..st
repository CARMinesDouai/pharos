as yet unclassified
adapt: aMessage
	^chainOfAdaption  inject: aMessage into: [ : rslt : adaptor | adaptor adapt: rslt ].