scripts
scriptParameterBinding
	| integer |
	"A parameter is a value registered in the master. The idea is to give the chance to 3rd agents to change the value of this parameter. In order to ask for a parameter instance we call the following code"
	
	integer := self controller node parameter: 'integer' initialized: 1. 
	
	" The variable integer now points to a binding. This binding understands #set: and #get messages. Is related with the ROS running environment. "
	
	
