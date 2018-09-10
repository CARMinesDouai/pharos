accessing
checkConnection
	socket isConnected ifFalse:[
		PhaROSError signal: 'Socket closed'.	
	].
