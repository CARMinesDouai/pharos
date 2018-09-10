PhaROSTopicConectionBuilder is an object that build a topic flux, which is a representation of a topic for consuming from outside. 
It allows to configure 

	1- typedAs: aTypeID
	2- adapted: anAdaption
	3- for: aCallback
	4- when: aConditionBlock
	
In order to build the connection, the message expected is

	connect
	
	This last message returns a PhaROSTopicFlux configured.
	
	{  PhaROSTopicFlux documentation }
	