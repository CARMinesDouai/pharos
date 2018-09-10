as yet unclassified
call: aMessageBlock
	| request response |
	request :=	self requestType newPacket value.
	response := self responseType newPacket value.
	aMessageBlock value: request.
	self process: request with: response.
	^ response.