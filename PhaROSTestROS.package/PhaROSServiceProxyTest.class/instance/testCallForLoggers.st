testing
testCallForLoggers

	service :=  master lookupService: '/rosout/get_loggers' with: '/andID' .
	service md5Sum: '32e97e85527d4678a8f9279894bb64b0'.
	loggers := service call.
	self assert: (loggers loggers  anySatisfy: [: logger | logger name = 'ros' ]).
	self assert: (loggers loggers  anySatisfy: [: logger | logger name = 'ros.roscpp' ]).
	self assert: (loggers loggers  anySatisfy: [: logger | logger name = 'ros.roscpp.roscpp_internal' ]).
	self assert: (loggers loggers  anySatisfy: [: logger | logger name = 'ros.roscpp.superdebug' ]).
