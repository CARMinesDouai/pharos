PhaROSTopicFlux is an object that represents the receiving time of a message. It allows too choose which messages process and also allows an easy previous transformation from the basic type of the message to what the callback needs for execute. 
Basing the mechanism of callback executing in the following method

receive: aMessage from: aChannel
	(self imInterestedIn: aMessage from: aChannel) ifTrue: [
		lastTimeStamp := DateAndTime now.
		self redirect: (self adapt: aMessage ) from: aChannel at: (self fetchStamp: aMessage).
	].


imInterestedIn:from:
	Is based on a given conditional block.

adapt:
	It takes the message and return a transformation. 
	It is based on a given adaption.  < PhaROSMessageAdapter | PhaROSFilter | PhaROSConverter >
	
redirect:from:at:
	It takes the adapted message, the channel and the timestamp if it exists and give them to the callback
	It is based on the given callback
	


