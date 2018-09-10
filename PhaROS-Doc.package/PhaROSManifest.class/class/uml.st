as yet unclassified
uml
	^
'[PhaROSNode]<>-transport->[PhaROSTransport]
[PhaROSTransport]<>-node->[PhaROSNode]
[PhaROSTransport]++-master->[PhaROSMaster]
[PhaROSTransport]++-comm->[PhaROSCommunicationLayer]
[PhaROSCommunicationLayer]<>-transport->[PhaROSTransport]
[PhaROSCommunicationLayer]<>-xml->[XMLRPCServer]
[PhaROSCommunicationLayer]<>-server->[PhaROSTCPServer]
[PhaROSMaster]-topics-*>[PhaROSTopic]
[PhaROSTopic]<>-channels-*>[PhaROSChannel]
[PhaROSChannel]<>-topic->[PhaROSTopic]
[PhaROSChannel]<>-owner->[PhaROSNode]
[PhaROSChannel]^-[PhaROSInputChannel]
[PhaROSChannel]^-[PhaROSOutputChannel]
[PhaROSOutputChannel] <>-subscribers-*> [PhaROSNode]
[PhaROSInputChannel] <>-publishers-*> [PhaROSNode]'.