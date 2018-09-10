PhaROSExternalNode is the representation of a node that lives in ROS world, but not in this image. Even when is not subclass of PhaROSNode, is polymorphic with it objects for the topic management, allowing to use as receptor of a ROS message any kind of both nodes.

For the case of reading message from it (what means to send messages into the system), we have PhaROSSelfProcessedExternalNode, which has a process attached to the related socket and let the messages go into our image side of ROS world.
Is important to take in care that in this architecture, for each incoming conection, we have one process polling the messages.

