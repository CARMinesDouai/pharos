initialize-release
useTypeDefinition: anArrayOfFields
	anArrayOfFields do: [ : field |
		
		typeDefinition at: field name put: field type.
	]
	