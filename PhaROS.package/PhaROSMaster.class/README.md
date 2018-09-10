A ROS based system relies on a special node called master. The ROS master is the entry point for all other nodes, since it allows them discover each other. Because ROS master is playing a so central role, it must be launched before all other nodes. This is done by executing the roscore command line.
The ROS master acts as a naming registry. It stores topics and services registra- tion information for ROS nodes. Nodes communicate with the master to report their registration information. As these nodes communicate with the master, they can re- ceive information about other registered nodes and make connections as appropriate. The master will also make callbacks to these nodes when this registration information changes, which allows nodes to dynamically create connections as new nodes are run.
Nevertheless, nodes "talk" to each other directly. Indeed, the master only provides lookup information, much like a DNS server.

PhaROSMaster is the main object to interact with the ROS master, providing a clear API to:

	1- Deal with parameters 
	2- Lookup nodes
	3- Lookup topic publishers / subscribers.
	4- Lookup service providers.
	5- Register nodes into the system.
	

	In order to achive this goal, this objects count with a proxy based on the XMLRPC-Client framework, that gives a direct API to the XMLRPC service provided by the ROS Master node. 
	
      