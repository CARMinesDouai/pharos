# PhaROS
	## User guide
		### What is PhaROS? 
			PhaROS is a framework for Robot Operative System that provides a powerful environment to:
			
			1- Develop ROS nodes in a powerful object oriented ambient.
			2- Manage ROS system, from node dependencies in runtime to message deployment, using a programming environment.
			3- Define repetable and testeable experiments.
		
	
		### Building
			PhaROS relies on several other open source projects programmed in Pharo. The main ones are:
				* XMLRPC which provides support for doing Remote Procdedure Call through XML
				* OSProcess which provides support to run system commands (such as rosrun) from Pharo
				To install PhaROS, you should:
					1. Download Pharo 1.4 (the virtual machine, the image and the source file) at http://www.pharo-project.org/pharo-download/release-1-4
					2. Load the PhaROS code and its dependencies using:
		
			Gofer it url: 'http://car.mines-douai.fr/squeaksource/PhaROS'; package: 'ConfigurationOfPhaROS'; load.
			((Smalltalk at: #ConfigurationOfPhaROS) project version: #) load.
			
		### Launching
		### Tutorials 
			
		
		
	## Design 
	
	
		### Robot Operative System ([ROS|http://www.ros.org/]) is a system that provides a processing architecture for robot development. In general terms, a ROS solution consist in several nodes of execution that solve small problems, like broadcasting of sensor information, analyze sensor information (map building, localize, etc), execute robot behavior (translation in the environment, rotation in place, arm movement, audio playing, etc), visualize information.  The communication in between nodes is done throught a TCP based protocol for regular communication and [XMLRPC|http://en.wikipedia.org/wiki/XML-RPC] for tcp negotiations.  In order to avoid hard relations in between node, there is also a process called Master which provides an XMLRPC for register and query nodes, topics and services.
		
			
		### Master 
			{  PhaROSMaster documentation }
	
		### Controller
			{ PhaROSSystemController documentation}
			
		### Node 
			{ PhaROSNode documentation }
			{ PhaROSExternalNode documentation}
			
		#### Topics
			{ PhaROSTopic documentation}
			
		#### Services
			
			
		### Nodelets
			{  PhaROSNodelet documentation }

		### Types
		
		### Transport 
		
		### Processes

	 
	## DOC
		
	
	
	
	