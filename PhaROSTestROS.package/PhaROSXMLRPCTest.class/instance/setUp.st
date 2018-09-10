setup / teardown
setUp 
	super setUp.
	
	expectedSystemState := PhaROSSystemState new.
	expectedSystemState
		addPublishers: {'/rosout'} forTopic: '/rosout_agg' ;
		addSubscribers: {'/rosout'} forTopic: '/rosout' ;
		addProviders: {'/rosout'} forService: '/rosout/set_logger_level';
		addProviders: {'/rosout'} forService: '/rosout/get_loggers'.
