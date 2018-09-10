testing
testEncoding
	
	self assert: (PhaROSHSMessageEncoder encode: message)= (self  expectedByteArray first: 180)
	"In our approach we dont use the body space of the message in order to use the specific tcp/messages in just one way"