# Launch

	This object a builder that allows to create a configuration to startup a ROS system. 
	It provides an easy and fluid way to configure a group of nodes to execute.
	
	# {design_title}
		The launch builder it is based in a simple reification of a tree structure that counts with the following classes:
		
		- { class_documentation: PhaROSAbstractElement }
			1- { class_documentation: PhaROSBaseElement }
			2- { class_documentation: PhaROSNamedLeafElement }
		
		Under the definition of this basic objects, we define a two richers elements that implements several messages to allow an easy and domain based configuration of the launch definition.
		
		- { class_documentation: PhaROSNodeBuilder }
		- { class_documentation: PhaROSLaunchBuilder }
		
	# {example_title}
		{ example_methods  }
	
	
	
	
	
	