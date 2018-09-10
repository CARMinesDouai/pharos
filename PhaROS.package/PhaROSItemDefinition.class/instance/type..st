accessing
type: aType
	self haltIf: (aType isKindOf: PhaROSMessageTypeBuilder ).
	type:= aType