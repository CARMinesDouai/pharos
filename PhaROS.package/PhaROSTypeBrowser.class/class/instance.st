as yet unclassified
instance
	^ instance ifNil: [
		instance := super new.	
		instance fillWithExistingGeneratedTypeClasses
		"instance register: 
					(PhaROSType composite: {
						#loggers -> (PhaROSArrayType of: (PhaROSTypeBrowser instance definition: 'roscpp/Logger') ).
					} named: 'roscpp/GetLoggersResponse' withConstants:{})
				at: 'roscpp/GetLoggersResponse'. 
	
		instance register: 
					(PhaROSType composite: {
					} named: 'roscpp/GetLoggersRequest' withConstants:{})
				at: 'roscpp/GetLoggersRequest'. 
		instance register: 
					(PhaROSType composite: {
					} named: 'std_srvs/EmptyRequest' withConstants:{})
				at: 'std_srvs/EmptyRequest'. 
		instance register: 
					(PhaROSType composite: {
					} named: 'std_srvs/EmptyResponse' withConstants:{})
				at: 'std_srvs/EmptyResponse'. "
	].