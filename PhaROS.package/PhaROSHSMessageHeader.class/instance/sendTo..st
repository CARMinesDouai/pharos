communication
sendTo: aSocket
	aSocket sendData: (PhaROSHSMessageEncoder encode: self).
		
