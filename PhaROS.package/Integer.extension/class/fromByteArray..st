*PhaROS
fromByteArray: aByteArray 
	^ self byte1: (aByteArray at:1) byte2: (aByteArray at:2) byte3:( aByteArray at:3 )byte4: (aByteArray at:4) .