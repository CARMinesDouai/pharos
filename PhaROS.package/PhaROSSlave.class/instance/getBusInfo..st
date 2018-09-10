as yet unclassified
getBusInfo: aCallerId
	 | info node |
		
	info := owner topics inject: Set new into: [ :set :topic | 
		set addAll: (topic busInfoFor: owner). set. 
	].
	
	
	"info := { 
		{ '0' . '/turtlesim' . 'i' . 'TCPROS' . '/turtle1/command_velocity' }  
	}."
	
	 ^{ 1 . 'bus info' . info asArray }.
	