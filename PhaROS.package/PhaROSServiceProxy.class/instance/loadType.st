calling
loadType

	| socketStr messageBytes header types |

	
	messageBytes := (PhaROSHSMessageEncoder encode: (self messageHeaderForBrowseType)), #[0 0 0 0].
	
	socketStr := SocketStream openConnectionToHostNamed: self hostName port: self port.
	socketStr sendCommand: messageBytes.
	header := PhaROSHSMessageHeader newServiceClientMessageFrom: (socketStr upToEnd ) asByteArray readStream.
	socketStr close.

	types := (PhaROSTypeBrowser instance serviceType: header type) .
	"self assert: header md5Sum  = types md5Sum description: 'Incompatible type hash'. "
	requestType :=  types request.
	responseType := types response.
	md5sum := header md5Sum.
	
