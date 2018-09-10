as yet unclassified
resolveSocketTo: aTopic of: anURL for: aNode
	| proxy tcpConnectionData socket |
	
	proxy := PhaROSProxy url: anURL.
	tcpConnectionData := proxy invokeMethod: 'requestTopic' withArgs: { aNode name . aTopic name . {{ 'TCPROS' }}}.
	
	socket := Socket newTCP.
	socket connectTo: ( NetNameResolver addressForName:  (tcpConnectionData at: 2) )  port: (tcpConnectionData at: 3).
	^ socket.