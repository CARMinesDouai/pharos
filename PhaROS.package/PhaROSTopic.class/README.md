[ ros topic | http://www.ros.org/wiki/Topics ]

Topics are named buses over which nodes exchange messages. 
Topics decouples the production of data from its consumption i.e.:
- 1 or more publisher nodes can send data into one specific topic
- 1 or more subscriber nodes can receive data from this same topic
- publishers and subscribers does not know each other and they are not aware of who they are communicating with.

PhaROSTopic is the Pharo representation of this Topic concept.
A PhaROSTopic has an input and an output channels (cf. PhaROSChannel) that relate a publisher node with some subscribers. 

{ PhaROSChannel documentation }

When a node registers in a topic as publisher, the topic add a new PhaROSOutPutChannel,  when a node register as subscriber, the topic register the node in all existing channels as subscriber, register in the master as subscriber. Thanks to this architecture, if we have a local publisher and a local subscriber of the same topic, the connection in between them will be just an object, avoiding not just connection, but also serialization process. 