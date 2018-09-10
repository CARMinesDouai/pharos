as yet unclassified
at: aPropertyName put: aValue ofType: aType
	"=
		 
		# {arguments_title}
			-  aPropertyName : String
			-  aValue : Object
			-  aType : Class
		# {sinopsis_title}
			Set the given value to the property named as aPropertyName if the value is of the given type .
		
	="

	^ self at: aPropertyName put: aValue checking: [: val | val isKindOf: aType].