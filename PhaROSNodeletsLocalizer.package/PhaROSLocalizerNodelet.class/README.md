This nodelet has its mean to receive vectors in form of geometry_msgs/Pose (or polimorphic) that point to an id. With that data, this package obtain the best positioning. It learns from the measures and also give feedback. The more info it accumulates the more accuracy it have. 

	In order to achive this we have the message 

	learn: aTopicFlux
	
	which configure the localizer to consume information from this topic, and register all the measures.
	
	This nodelet also allows to broadcast the localized entities as {PhaROSLocalizerNodelet mapTopicType} with the localization of each entity in a grid, taking as base the /map frame coordinate system. To start this broadcasting you just need to send the message
	
	
	map -- it open a publishing topic named { PhaROSLocalizerNodelet mapTopic} 
	
	Finally, in order to keep this results out of the image and be able to load them in other images, there are two more messages
	
	fileout: aPath --- it dumps all the entities in a .st file. 
	filein: aPath --- it loads a dump.
	
