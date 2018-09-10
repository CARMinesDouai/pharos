decoding
decode: aStream using: aMessage
	^ self new 	tcpmessage: aMessage; 
				decode: aStream.

