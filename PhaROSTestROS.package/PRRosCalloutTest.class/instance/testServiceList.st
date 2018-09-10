services
testServiceList
	| list |
	
	"No dependencies on other tests"
	
	list := resource tokenizeString:((PipeableOSProcess command: 'rosservice list') output).

	self assert:  (list includes: '/clear').
	self assert:  (list includes: '/kill').
	self assert:  (list includes: '/reset').
	self assert:  (list includes: '/rosout/get_loggers').
	self assert:  (list includes: '/rosout/set_logger_level').
	self assert:  (list includes: '/spawn').
	self assert:  (list includes: '/turtle1/get_loggers').
	self assert:  (list includes: '/turtle1/set_logger_level').
	self assert:  (list includes: '/turtle1/set_pen').
	self assert:  (list includes: '/turtle1/teleport_absolute').
	self assert:  (list includes: '/turtle1/teleport_relative').
	self assert: (list size) = 11.
"In case we run the teleop"
"	self assert: (list size) = 1.	
	self assert:  (list includes: '/turtle_teleop/get_loggers').
	self assert:  (list includes: '/turtle_teleop/set_logger_level')."

