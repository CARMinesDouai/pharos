pseudo-dsl
definedBy: aROSTypeId named: aName 
	 ^ PhaROSFieldDefinition named: aName type: (PhaROSTypeBrowser instance type: aROSTypeId ).