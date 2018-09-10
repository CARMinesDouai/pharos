activation
loadNetworkSettings
	| currentConfiguration |
	
	currentConfiguration := (OSProcess thisOSProcess environmentAt: #http_proxy) ifNil: [ (OSProcess thisOSProcess environmentAt: #HTTP_PROXY) ].

	currentConfiguration ifNil: [ 
		NetworkSystemSettings useHTTPProxy: false.
	 ] ifNotNil: [ 
		currentConfiguration ifEmpty: [ 
			NetworkSystemSettings useHTTPProxy: false.
		 ] ifNotEmpty: [  
			currentConfiguration := currentConfiguration asZnUrl.
			NetworkSystemSettings useHTTPProxy: true.
			NetworkSystemSettings httpProxyServer: currentConfiguration host.
			NetworkSystemSettings httpProxyPort: currentConfiguration port.		
		].
	 ].
