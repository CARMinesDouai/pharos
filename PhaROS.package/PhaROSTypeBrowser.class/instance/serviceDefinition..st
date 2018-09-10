definition
serviceDefinition: aTypeId

	
	^ (self browser at: aTypeId ifAbsentPut: [
			| code instructions request response type |
			
			code :=  '---' split: (PhaROSSystemLauncher instance rosSrvShow: aTypeId).
			
			instructions := (Character lf split:( code at:1 ) ) select: [ :str | (str beginsWith: ' ') not & (str size > 3) ] .
			request := self typeNamed:( '{1}Request' format:{ aTypeId} )for: (instructions).
			
			
			instructions := (Character lf split:( code at:2 ) ) select: [ :str | (str beginsWith: ' ') not & (str size > 3) ] .
			response := self typeNamed:( '{1}Response' format:{ aTypeId} )for: (instructions).
			
			
			PhaROSServiceTypeBuilder named: aTypeId  request: request response: response.
		]) 

