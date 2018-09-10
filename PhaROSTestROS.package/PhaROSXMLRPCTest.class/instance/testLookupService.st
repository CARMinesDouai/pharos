testing
testLookupService
	|service expectedServiceName|
	expectedServiceName := '/rosout/get_loggers'.
	service :=  master lookupService: expectedServiceName with: self callerId.
	self assert: service uri host = self masterUrl asUrl host.
	self assert: service serviceName = expectedServiceName 