calling
bytesForMessageWithArgs: args
	^ PhaROSHSMessageEncoder encode: (self messageWithArgs: args).