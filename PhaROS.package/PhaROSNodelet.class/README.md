PhaROSNodelet is the abstract representation of a piece of behavior plugable in a PhaROSHandleController, and that it needs a node in order to work, its mean to be subclassified.

	In order to subclassify and use a nodelet there are several things to take in count:
	
	* The nodelets are builded sending buildNodelet message to the nodelet class. Is important to let the Nodelet cotainer to build the instance because of the name registration, and in order to let any one to configure the container, no matter if it is already configured. (Like import/include in other languages, but configurable by the user).
	* A nodelet can redefine the follow messages
		+ configure --- Executed once the nodelet is builded, installed and the handle controller is setted inside. 
		+ dependencies --- executed by the controller when is asked to build a launch file to start all the ROS dependencies.
		+ types --- executed by the install message, which is sended just after builded the nodelet. This message returns the types expected in the system, the types that are not presents are compiled and deployed during install.
	


There are also two main flavors of nodelet

	* PhaROSDynamicNodelet --- The dependencies of this kind of nodelets are stored in inner collections.
	* PhaROSStaticNodelet --- The dependencies of this kind of nodelets are asked to class messages.
	


	Builded in nodelets
	

	* Merger
			{ PhaROSMergerNodelet documentation }
			
	* Move base 
			{ PhaROSMoveBaseNodelet documentation }
			
	* Localizer 
			{ PhaROSLocalizerNodelet documentation }
			
	* Turtlebot
			{ PhaROSTurtlebotNodelet documentation }
	
	* TF 
			{ PhaROSTransformationNodelet documentation }