*PhaROS
fromIEEE32BitByteArray: aByteArray 
	^ self fromIEEE32Bit: (LargePositiveInteger fromByteArray: aByteArray ).