as yet unclassified
at: aPropertyName put: aValue checking: aBlock
	"=
		 
		# {arguments_title}
			-  aPropertyName : String
			-  aValue : Object
			-  aBlock : { (PropertyName, Value, Element) -> Boolean }
		# {sinopsis_title}
			Set the given value to the property named as aPropertyName if the given block results in true.
		
	="
	self assert: (aBlock cull: aValue cull: aPropertyName cull: self ).
	self at: aPropertyName put: aValue.