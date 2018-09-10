as yet unclassified
addToMessagesQueue: aBinaryMessage
	| rt |
	rt := owner socket sendData:  aBinaryMessage.
	^ rt. 
