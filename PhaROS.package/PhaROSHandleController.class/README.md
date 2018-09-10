PhaROSHandleController approach consist in use nodelets to add functionalities to a node throught the controller. This controller has a reference to the related master and also to a nodelet container, where all the nodelets can be registered.
	Diametricly different, this approach does not let create nodes but just one of class PhaROSNodeHandle, which is accessible by an accessor, and its used for all the registered nodelets to configure it needs of topics as subscribers or publishers, it allows also to define dependencies between nodelets and ROS packages in order to have enough meta data to allow dynamic spawning of foreign processes from the image using the launch facilities.
	
	The common way to register a nodelet inside this controller is talking with the nodelet container directly:
	
	+ nodelets use: ANodeletClass as: #aName
	
	The name that this controller use to register the handle node into the ROS system is a name of the form: '/PharoHandle-' ,  DateAndTime now asUnixTime asString . 