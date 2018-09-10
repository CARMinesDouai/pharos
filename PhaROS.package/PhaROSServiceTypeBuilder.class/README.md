PhaROSServiceTypeBuilder service named: #bla package: #lala request:{
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
	} response: { 
		UInt8 named: #bla .
		String named: #sarasa .
		FixedArray named: #lala sized: 30 ofType: UInt16.
	}.
	
Is in charge of generating Ros definition of a service type, Pharo definition of the service type, and generate the related class in pharo. 
