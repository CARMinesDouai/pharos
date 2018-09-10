as yet unclassified
startOn: aPort delegate: aDelegate
	^ self new listener: (ZnNetworkingUtils serverSocketOn: aPort); delegate: aDelegate; port: aPort; loop; yourself.