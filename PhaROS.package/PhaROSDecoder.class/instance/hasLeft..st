as yet unclassified
hasLeft: anAmountOfBytes
	 self flag: #comment.
	
	^ true.
	
	"
		since SocketStream doesnot understand position, this maybe has not sense. 
		^stream position + anAmountOfBytes <= stream size.
	"