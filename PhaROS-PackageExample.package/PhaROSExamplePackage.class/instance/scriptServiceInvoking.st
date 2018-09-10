scripts
scriptServiceInvoking
	| service |
	"In order ask for a service to be executed, you need to ask to the attached node for a service call object. For doing this you should type the following code"
	service := self controller node service: '/rosout/get_loggers'.
	service call.
	
	"This service call will ask for the loggers"
